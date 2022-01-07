
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ clock_t ;


 scalar_t__ CLOCKS_PER_SEC ;
 scalar_t__ clock () ;
 int printf (char*,...) ;

__attribute__((used)) static int time_blitter( void )
{
 int const duration = 4;
 static clock_t end_time;
 static int count;
 if ( !count )
 {
  clock_t time = clock();
  while ( clock() == time ) { }
  if ( clock() - time > CLOCKS_PER_SEC )
  {

   printf( "Insufficient time resolution\n" );
   return 0;
  }
  end_time = clock() + CLOCKS_PER_SEC * duration;
 }
 else if ( clock() >= end_time )
 {
  int rate = count / duration;
  printf( "Performance: %d frames per second, which would use %d%% CPU at 60 FPS\n",
    rate, 60 * 100 / rate );
  return 0;
 }
 count++;

 return 1;
}
