
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxinfo_t ;
struct TYPE_2__ {struct TYPE_2__* link; int data; int name; } ;


 int AFMT_S16_LE ;
 int I_SoundSetTimer (int) ;
 int MIXBUFFERSIZE ;
 int NUMSFX ;
 int O_WRONLY ;
 int SAMPLERATE ;
 int SNDCTL_DSP_GETFMTS ;
 int SNDCTL_DSP_RESET ;
 int SNDCTL_DSP_SETFMT ;
 int SNDCTL_DSP_SETFRAGMENT ;
 int SNDCTL_DSP_SPEED ;
 int SNDCTL_DSP_STEREO ;
 int SOUND_INTERVAL ;
 TYPE_1__* S_sfx ;
 int X_OK ;
 int access (char*,int ) ;
 scalar_t__ audio_fd ;
 int fprintf (int ,char*,...) ;
 char* getenv (char*) ;
 int getsfx (int ,int *) ;
 int * lengths ;
 scalar_t__* mixbuffer ;
 int myioctl (scalar_t__,int ,int*) ;
 scalar_t__ open (char*,int ) ;
 int popen (char*,char*) ;
 int sndserver ;
 char* sndserver_filename ;
 int sprintf (char*,char*,char*,...) ;
 int stderr ;
 int strcat (char*,char*) ;

void
I_InitSound()
{
  int i;







  fprintf( stderr, "I_InitSound: ");

  audio_fd = open("/dev/dsp", O_WRONLY);
  if (audio_fd<0)
    fprintf(stderr, "Could not open /dev/dsp\n");


  i = 11 | (2<<16);
  myioctl(audio_fd, SNDCTL_DSP_SETFRAGMENT, &i);
  myioctl(audio_fd, SNDCTL_DSP_RESET, 0);

  i=SAMPLERATE;

  myioctl(audio_fd, SNDCTL_DSP_SPEED, &i);

  i=1;
  myioctl(audio_fd, SNDCTL_DSP_STEREO, &i);

  myioctl(audio_fd, SNDCTL_DSP_GETFMTS, &i);

  if (i&=AFMT_S16_LE)
    myioctl(audio_fd, SNDCTL_DSP_SETFMT, &i);
  else
    fprintf(stderr, "Could not play signed 16 data\n");

  fprintf(stderr, " configured audio device\n" );



  fprintf( stderr, "I_InitSound: ");

  for (i=1 ; i<NUMSFX ; i++)
  {

    if (!S_sfx[i].link)
    {

      S_sfx[i].data = getsfx( S_sfx[i].name, &lengths[i] );
    }
    else
    {

      S_sfx[i].data = S_sfx[i].link->data;
      lengths[i] = lengths[(S_sfx[i].link - S_sfx)/sizeof(sfxinfo_t)];
    }
  }

  fprintf( stderr, " pre-cached all sound data\n");


  for ( i = 0; i< MIXBUFFERSIZE; i++ )
    mixbuffer[i] = 0;


  fprintf(stderr, "I_InitSound: sound module ready\n");


}
