
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct option {char* member_0; int member_1; char member_3; int * member_2; } ;
struct addrinfo {int dummy; } ;


 int NETPLAY_CMD_INFO ;


 int NETPLAY_CMD_MODE_BIT_PLAYING ;
 int NETPLAY_CMD_MODE_BIT_YOU ;
 int NETPLAY_CMD_NICK ;

 int NETPLAY_CMD_PLAY ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_WRONLY ;
 int RARCH_DEFAULT_PORT ;
 int RECV () ;
 int SEND () ;
 int SOCKET_PROTOCOL_TCP ;
 int WRITE () ;
 int atoi (char*) ;
 int cmd ;
 int cmd_size ;
 int fprintf (int ,char*) ;
 void* frame_offset ;
 int frame_offset_cmd (int) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 scalar_t__ htonl (int) ;
 scalar_t__* malloc (int) ;
 void* ntohl (scalar_t__) ;
 int open (char const*,int,...) ;
 char* optarg ;
 int optind ;
 scalar_t__* payload ;
 int payload_size ;
 int perror (char const*) ;
 int ranp_in ;
 int ranp_out ;
 int send_input (int ) ;
 int sock ;
 int socket_close (int ) ;
 scalar_t__ socket_connect (int ,struct addrinfo*,int) ;
 int socket_init (void**,int,char const*,int ) ;
 int socket_receive_all_blocking (int ,scalar_t__*,int) ;
 int socket_send_all_blocking (int ,scalar_t__*,int,int) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int usage () ;

int main(int argc, char **argv)
{
   struct addrinfo *addr;
   uint32_t rd_frame = 0;
   int ahead = 0;
   const char *host = "localhost",
      *ranp_in_file_name = ((void*)0),
      *ranp_out_file_name = ((void*)0);
   int port = RARCH_DEFAULT_PORT;
   bool playing = 0, playing_started = 0,
      recording = 0, recording_started = 0;
   const char *optstring = ((void*)0);

   const struct option opt[] = {
      {"host", 1, ((void*)0), 'H'},
      {"port", 1, ((void*)0), 'P'},
      {"play", 1, ((void*)0), 'p'},
      {"record", 1, ((void*)0), 'r'},
      {"ahead", 1, ((void*)0), 'a'}
   };

   while (1)
   {
      int c;

      c = getopt_long(argc, argv, "H:P:p:r:a:", opt, ((void*)0));
      if (c == -1)
         break;

      switch (c)
      {
         case 'H':
            host = optarg;
            break;

         case 'P':
            port = atoi(optarg);
            break;

         case 'p':
            playing = 1;
            ranp_in_file_name = optarg;
            break;

         case 'r':
            recording = 1;
            ranp_out_file_name = optarg;
            break;

         case 'a':
            ahead = atoi(optarg);
            break;

         default:
            usage();
            return 1;
      }
   }

   if (!playing && optind < argc)
   {
      playing = 1;
      ranp_in_file_name = argv[optind++];
   }
   if (!playing && !recording)
   {
      usage();
      return 1;
   }


   payload_size = 4096;
   payload = malloc(payload_size);
   if (!payload)
   {
      perror("malloc");
      return 1;
   }


   if (playing)
   {
      ranp_in = open(ranp_in_file_name, O_RDONLY);
      if (ranp_in == -1)
      {
         perror(ranp_in_file_name);
         return 1;
      }
   }


   if (recording)
   {
      ranp_out = open(ranp_out_file_name, O_WRONLY|O_CREAT|O_EXCL, 0666);
      if (ranp_out == -1)
      {
         perror(ranp_out_file_name);
         return 1;
      }
   }


   if ((sock = socket_init((void **) &addr, port, host, SOCKET_PROTOCOL_TCP)) < 0)
   {
      perror("socket");
      return 1;
   }

   if (socket_connect(sock, addr, 0) < 0)
   {
      perror("connect");
      return 1;
   }


   if (!socket_receive_all_blocking(sock, payload, 6*sizeof(uint32_t)))
   {
      fprintf(stderr, "Failed to receive connection header.\n");
      return 1;
   }


   if (payload[3])
   {
      fprintf(stderr, "Password required but unsupported.\n");
      return 1;
   }


   socket_send_all_blocking(sock, payload, 6*sizeof(uint32_t), 1);


   cmd = NETPLAY_CMD_NICK;
   cmd_size = 32;
   strcpy((char *) payload, "RANetplayer");
   SEND();


   RECV();


   RECV();
   if (cmd != NETPLAY_CMD_INFO)
   {
      fprintf(stderr, "Failed to receive INFO.");
      return 1;
   }


   if (recording)
      WRITE();


   SEND();


   RECV();



   if (recording && !playing)
   {
      recording_started = 1;
      frame_offset = ntohl(payload[0]);
   }


   if (playing)
   {
      cmd = NETPLAY_CMD_PLAY;
      cmd_size = sizeof(uint32_t);
      payload[0] = htonl(1);
      SEND();
   }


   while (1)
   {
      RECV();

      frame_offset_cmd(1);


      if (recording && recording_started)
         WRITE();


      switch (cmd)
      {
         case 129:
            if (playing && !playing_started)
            {
               uint32_t player;

               if (cmd_size < 2*sizeof(uint32_t)) break;


               player = ntohl(payload[1]);
               if ((player & NETPLAY_CMD_MODE_BIT_PLAYING) &&
                   (player & NETPLAY_CMD_MODE_BIT_YOU))
               {

                  playing_started = 1;
                  frame_offset_cmd(0);
                  frame_offset = ntohl(payload[0]);

                  if (recording)
                     recording_started = 1;


                  send_input(0);
               }
            }
            break;

         case 130:
         case 128:
         {
            uint32_t frame;

            if (!playing || !playing_started) break;
            if (cmd_size < sizeof(uint32_t)) break;

            frame = ntohl(payload[0]);


            if (cmd == 130 &&
                (cmd_size < 2*sizeof(uint32_t) ||
                 (ntohl(payload[1]) != 0)))
            {
               break;
            }

            if (frame > rd_frame)
            {
               rd_frame = frame;
               if (ahead >= 0 || frame >= (uint32_t) -ahead)
               {
                  if (!send_input(frame + ahead))
                  {
                     if (!recording)
                        socket_close(sock);
                     playing = playing_started = 0;
                  }
               }
            }

            break;
         }
      }
   }

   return 0;
}
