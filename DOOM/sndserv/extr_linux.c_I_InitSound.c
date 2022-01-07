
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFMT_S16_LE ;
 int O_WRONLY ;
 int SNDCTL_DSP_GETFMTS ;
 int SNDCTL_DSP_RESET ;
 int SNDCTL_DSP_SETFMT ;
 int SNDCTL_DSP_SETFRAGMENT ;
 int SNDCTL_DSP_SPEED ;
 int SNDCTL_DSP_STEREO ;
 scalar_t__ audio_fd ;
 int fprintf (int ,char*) ;
 int myioctl (scalar_t__,int ,int*) ;
 scalar_t__ open (char*,int ) ;
 int stderr ;

void
I_InitSound
( int samplerate,
  int samplesize )
{

    int i;

    audio_fd = open("/dev/dsp", O_WRONLY);
    if (audio_fd<0)
        fprintf(stderr, "Could not open /dev/dsp\n");


    i = 11 | (2<<16);
    myioctl(audio_fd, SNDCTL_DSP_SETFRAGMENT, &i);

    myioctl(audio_fd, SNDCTL_DSP_RESET, 0);
    i=11025;
    myioctl(audio_fd, SNDCTL_DSP_SPEED, &i);
    i=1;
    myioctl(audio_fd, SNDCTL_DSP_STEREO, &i);

    myioctl(audio_fd, SNDCTL_DSP_GETFMTS, &i);
    if (i&=AFMT_S16_LE)
        myioctl(audio_fd, SNDCTL_DSP_SETFMT, &i);
    else
        fprintf(stderr, "Could not play signed 16 data\n");

}
