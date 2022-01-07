
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int member_1; int member_0; } ;
struct TYPE_2__ {int data; } ;


 int FD_SET (int ,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int I_InitMusic () ;
 int I_InitSound (int,int) ;
 int O_CREAT ;
 int O_WRONLY ;
 TYPE_1__* S_sfx ;
 int addsfx (int,int,int,int) ;
 int * channels ;
 int close (int) ;
 int fdset ;
 int fprintf (int ,char*,...) ;
 int grabdata (int,char**) ;
 int initdata () ;
 int * lengths ;
 int mytime ;
 int open (char*,int,int) ;
 int quit () ;
 int read (int ,unsigned char*,int) ;
 int scratchset ;
 int select (int ,int *,int ,int ,struct timeval*) ;
 scalar_t__ snd_verbose ;
 int stderr ;
 int* steptable ;
 int updatesounds () ;
 int write (int,int ,int ) ;

int
main
( int c,
  char** v )
{

    int done = 0;
    int rc;
    int nrc;
    int sndnum;
    int handle = 0;

    unsigned char commandbuf[10];
    struct timeval zerowait = { 0, 0 };


    int step;
    int vol;
    int sep;

    int i;
    int waitingtofinish=0;


    grabdata(c, v);


    initdata();

    I_InitSound(11025, 16);

    I_InitMusic();

    if (snd_verbose)
 fprintf(stderr, "ready\n");


    FD_ZERO(&fdset);
    FD_SET(0, &fdset);

    while (!done)
    {
 mytime++;

 if (!waitingtofinish)
 {
     do {
  scratchset = fdset;
  rc = select(FD_SETSIZE, &scratchset, 0, 0, &zerowait);

  if (rc > 0)
  {


      nrc = read(0, commandbuf, 1);

      if (!nrc)
      {
   done = 1;
   rc = 0;
      }
      else
      {
   if (snd_verbose)
       fprintf(stderr, "cmd: %c", commandbuf[0]);

   switch (commandbuf[0])
   {
     case 'p':

       read(0, commandbuf, 9);

       if (snd_verbose)
       {
    commandbuf[9]=0;
    fprintf(stderr, "%s\n", commandbuf);
       }

       commandbuf[0] -=
    commandbuf[0]>='a' ? 'a'-10 : '0';
       commandbuf[1] -=
    commandbuf[1]>='a' ? 'a'-10 : '0';
       commandbuf[2] -=
    commandbuf[2]>='a' ? 'a'-10 : '0';
       commandbuf[3] -=
    commandbuf[3]>='a' ? 'a'-10 : '0';
       commandbuf[4] -=
    commandbuf[4]>='a' ? 'a'-10 : '0';
       commandbuf[5] -=
    commandbuf[5]>='a' ? 'a'-10 : '0';
       commandbuf[6] -=
    commandbuf[6]>='a' ? 'a'-10 : '0';
       commandbuf[7] -=
    commandbuf[7]>='a' ? 'a'-10 : '0';


       sndnum = (commandbuf[0]<<4) + commandbuf[1];
       step = (commandbuf[2]<<4) + commandbuf[3];
       step = steptable[step];
       vol = (commandbuf[4]<<4) + commandbuf[5];
       sep = (commandbuf[6]<<4) + commandbuf[7];

       handle = addsfx(sndnum, vol, step, sep);


       break;

     case 'q':
       read(0, commandbuf, 1);
       waitingtofinish = 1; rc = 0;
       break;

     case 's':
     {
         int fd;
         read(0, commandbuf, 3);
         commandbuf[2] = 0;
         fd = open((char*)commandbuf, O_CREAT|O_WRONLY, 0644);
         commandbuf[0] -= commandbuf[0]>='a' ? 'a'-10 : '0';
         commandbuf[1] -= commandbuf[1]>='a' ? 'a'-10 : '0';
         sndnum = (commandbuf[0]<<4) + commandbuf[1];
         write(fd, S_sfx[sndnum].data, lengths[sndnum]);
         close(fd);
     }
     break;

     default:
       fprintf(stderr, "Did not recognize command\n");
       break;
   }
      }
  }
  else if (rc < 0)
  {
      quit();
  }
     } while (rc > 0);
 }

 updatesounds();

 if (waitingtofinish)
 {
     for(i=0 ; i<8 && !channels[i] ; i++);

     if (i==8)
  done=1;
 }

    }

    quit();
    return 0;
}
