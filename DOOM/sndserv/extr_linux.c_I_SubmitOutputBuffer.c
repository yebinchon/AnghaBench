
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audio_fd ;
 int write (int ,void*,int) ;

void
I_SubmitOutputBuffer
( void* samples,
  int samplecount )
{
    write(audio_fd, samples, samplecount*4);
}
