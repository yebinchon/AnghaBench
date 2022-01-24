#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct option {char* member_0; int member_1; char member_3; int /*<<< orphan*/ * member_2; } ;
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int NETPLAY_CMD_INFO ; 
#define  NETPLAY_CMD_INPUT 130 
#define  NETPLAY_CMD_MODE 129 
 int NETPLAY_CMD_MODE_BIT_PLAYING ; 
 int NETPLAY_CMD_MODE_BIT_YOU ; 
 int NETPLAY_CMD_NICK ; 
#define  NETPLAY_CMD_NOINPUT 128 
 int NETPLAY_CMD_PLAY ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int RARCH_DEFAULT_PORT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SOCKET_PROTOCOL_TCP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 
 int cmd ; 
 int cmd_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* frame_offset ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__* FUNC8 (int) ; 
 void* FUNC9 (scalar_t__) ; 
 int FUNC10 (char const*,int,...) ; 
 char* optarg ; 
 int optind ; 
 scalar_t__* payload ; 
 int payload_size ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int ranp_in ; 
 int ranp_out ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct addrinfo*,int) ; 
 int /*<<< orphan*/  FUNC15 (void**,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 

int FUNC20(int argc, char **argv)
{
   struct addrinfo *addr;
   uint32_t rd_frame = 0;
   int ahead = 0;
   const char *host = "localhost",
      *ranp_in_file_name = NULL,
      *ranp_out_file_name = NULL;
   int port = RARCH_DEFAULT_PORT;
   bool playing = false, playing_started = false,
      recording = false, recording_started = false;
   const char *optstring = NULL;

   const struct option opt[] = {
      {"host",       1, NULL, 'H'},
      {"port",       1, NULL, 'P'},
      {"play",       1, NULL, 'p'},
      {"record",     1, NULL, 'r'},
      {"ahead",      1, NULL, 'a'}
   };

   while (1)
   {
      int c;

      c = FUNC6(argc, argv, "H:P:p:r:a:", opt, NULL);
      if (c == -1)
         break;

      switch (c)
      {
         case 'H':
            host = optarg;
            break;

         case 'P':
            port = FUNC3(optarg);
            break;

         case 'p':
            playing = true;
            ranp_in_file_name = optarg;
            break;

         case 'r':
            recording = true;
            ranp_out_file_name = optarg;
            break;

         case 'a':
            ahead = FUNC3(optarg);
            break;

         default:
            FUNC19();
            return 1;
      }
   }

   if (!playing && optind < argc)
   {
      playing = true;
      ranp_in_file_name = argv[optind++];
   }
   if (!playing && !recording)
   {
      FUNC19();
      return 1;
   }

   /* Allocate space for the protocol */
   payload_size = 4096;
   payload = FUNC8(payload_size);
   if (!payload)
   {
      FUNC11("malloc");
      return 1;
   }

   /* Open the input file, if applicable */
   if (playing)
   {
      ranp_in = FUNC10(ranp_in_file_name, O_RDONLY);
      if (ranp_in == -1)
      {
         FUNC11(ranp_in_file_name);
         return 1;
      }
   }

   /* Open the output file, if applicable */
   if (recording)
   {
      ranp_out = FUNC10(ranp_out_file_name, O_WRONLY|O_CREAT|O_EXCL, 0666);
      if (ranp_out == -1)
      {
         FUNC11(ranp_out_file_name);
         return 1;
      }
   }

   /* Connect to the netplay server */
   if ((sock = FUNC15((void **) &addr, port, host, SOCKET_PROTOCOL_TCP)) < 0)
   {
      FUNC11("socket");
      return 1;
   }

   if (FUNC14(sock, addr, false) < 0)
   {
      FUNC11("connect");
      return 1;
   }

   /* Expect the header */
   if (!FUNC16(sock, payload, 6*sizeof(uint32_t)))
   {
      FUNC4(stderr, "Failed to receive connection header.\n");
      return 1;
   }

   /* If it needs a password, too bad! */
   if (payload[3])
   {
      FUNC4(stderr, "Password required but unsupported.\n");
      return 1;
   }

   /* Echo the connection header back */
   FUNC17(sock, payload, 6*sizeof(uint32_t), true);

   /* Send a nickname */
   cmd = NETPLAY_CMD_NICK;
   cmd_size = 32;
   FUNC18((char *) payload, "RANetplayer");
   FUNC1();

   /* Receive (and ignore) the nickname */
   FUNC0();

   /* Receive INFO */
   FUNC0();
   if (cmd != NETPLAY_CMD_INFO)
   {
      FUNC4(stderr, "Failed to receive INFO.");
      return 1;
   }

   /* Save the INFO */
   if (recording)
      FUNC2();

   /* Echo the INFO */
   FUNC1();

   /* Receive SYNC */
   FUNC0();

   /* If we're recording and NOT playing, we start immediately in spectator
    * mode */
   if (recording && !playing)
   {
      recording_started = true;
      frame_offset = FUNC9(payload[0]);
   }

   /* If we're playing, request to enter PLAY mode */
   if (playing)
   {
      cmd = NETPLAY_CMD_PLAY;
      cmd_size = sizeof(uint32_t);
      payload[0] = FUNC7(1);
      FUNC1();
   }

   /* Now handle netplay commands */
   while (1)
   {
      FUNC0();

      FUNC5(true);

      /* Record this command */
      if (recording && recording_started)
         FUNC2();

      /* Now handle it for sync and playback */
      switch (cmd)
      {
         case NETPLAY_CMD_MODE:
            if (playing && !playing_started)
            {
               uint32_t player;

               if (cmd_size < 2*sizeof(uint32_t)) break;

               /* See if this is us joining */
               player = FUNC9(payload[1]);
               if ((player & NETPLAY_CMD_MODE_BIT_PLAYING) &&
                   (player & NETPLAY_CMD_MODE_BIT_YOU))
               {
                  /* This is where we start! */
                  playing_started = true;
                  FUNC5(false);
                  frame_offset = FUNC9(payload[0]);

                  if (recording)
                     recording_started = true;

                  /* Send our current input */
                  FUNC12(0);
               }
            }
            break;

         case NETPLAY_CMD_INPUT:
         case NETPLAY_CMD_NOINPUT:
         {
            uint32_t frame;

            if (!playing || !playing_started) break;
            if (cmd_size < sizeof(uint32_t)) break;

            frame = FUNC9(payload[0]);

            /* Only sync based on server time */
            if (cmd == NETPLAY_CMD_INPUT &&
                (cmd_size < 2*sizeof(uint32_t) ||
                 (FUNC9(payload[1]) != 0)))
            {
               break;
            }

            if (frame > rd_frame)
            {
               rd_frame = frame;
               if (ahead >= 0 || frame >= (uint32_t) -ahead)
               {
                  if (!FUNC12(frame + ahead))
                  {
                     if (!recording)
                        FUNC13(sock);
                     playing = playing_started = false;
                  }
               }
            }

            break;
         }
      }
   }

   return 0;
}