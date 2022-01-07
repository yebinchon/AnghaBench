
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFMUL ;
 int SAMPLECOUNT ;
 int audio_fd ;
 int mixbuffer ;
 int write (int ,int ,int) ;

void
I_SubmitSound(void)
{

  write(audio_fd, mixbuffer, SAMPLECOUNT*BUFMUL);
}
