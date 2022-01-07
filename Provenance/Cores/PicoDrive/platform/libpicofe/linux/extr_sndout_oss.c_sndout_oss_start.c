
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRAG_COUNT ;
 int O_WRONLY ;
 int SNDCTL_DSP_SETFMT ;
 int SNDCTL_DSP_SETFRAGMENT ;
 int SNDCTL_DSP_SPEED ;
 int SNDCTL_DSP_STEREO ;
 scalar_t__ can_write_safe ;
 int ioctl (int,int ,int*) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,int,int,char*,int,int) ;
 int sndout_oss_frag_frames ;
 int sndout_oss_stop () ;
 int sounddev ;
 int usleep (int) ;

int sndout_oss_start(int rate, int stereo)
{
 static int s_oldrate = 0, s_oldstereo = 0;
 int frag, bsize, bits, ret;



 if (sounddev >= 0 && rate == s_oldrate && s_oldstereo == stereo)
  return 0;

 sndout_oss_stop();
 sounddev = open("/dev/dsp", O_WRONLY);
 if (sounddev == -1)
 {
  perror("open(\"/dev/dsp\")");
  sounddev = open("/dev/dsp1", O_WRONLY);
  if (sounddev == -1) {
   perror("open(\"/dev/dsp1\")");
   return -1;
  }
 }





 bsize = (sndout_oss_frag_frames * rate / 50) * 4;

 for (frag = 0; bsize; bsize >>= 1, frag++)
  ;

 frag |= FRAG_COUNT << 16;
 ret = ioctl(sounddev, SNDCTL_DSP_SETFRAGMENT, &frag);
 if (ret < 0)
  perror("SNDCTL_DSP_SETFRAGMENT failed");

 bits = 16;
 ret = ioctl(sounddev, SNDCTL_DSP_STEREO, &stereo);
 if (ret == 0)
  ret = ioctl(sounddev, SNDCTL_DSP_SETFMT, &bits);
 if (ret == 0)
  ret = ioctl(sounddev, SNDCTL_DSP_SPEED, &rate);
 if (ret < 0)
  perror("failed to set audio format");






 printf("sndout_oss_start: %d/%dbit/%s, %d buffers of %i bytes\n",
  rate, bits, stereo ? "stereo" : "mono", frag >> 16, 1 << (frag & 0xffff));

 s_oldrate = rate; s_oldstereo = stereo;
 can_write_safe = 0;
 return 0;
}
