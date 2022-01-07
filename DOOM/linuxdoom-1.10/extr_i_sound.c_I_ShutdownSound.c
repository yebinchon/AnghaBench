
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_SoundDelTimer () ;
 int audio_fd ;
 int * channels ;
 int close (int ) ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*) ;
 scalar_t__ sndserver ;
 scalar_t__ stderr ;

void I_ShutdownSound(void)
{
  int done = 0;
  int i;



  fprintf( stderr, "I_ShutdownSound: NOT finishing pending sounds\n");
  fflush( stderr );

  while ( !done )
  {
    for( i=0 ; i<8 && !channels[i] ; i++);



    done=1;
  }





  close ( audio_fd );



  return;
}
