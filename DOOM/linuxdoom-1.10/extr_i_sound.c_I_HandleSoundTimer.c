
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFMUL ;
 int SAMPLECOUNT ;
 int audio_fd ;
 scalar_t__ flag ;
 int mixbuffer ;
 int write (int ,int ,int) ;

void I_HandleSoundTimer( int ignore )
{




  if ( flag )
  {


    write(audio_fd, mixbuffer, SAMPLECOUNT*BUFMUL);


    flag = 0;
  }
  else
    return;


  ignore = 0;
  return;
}
