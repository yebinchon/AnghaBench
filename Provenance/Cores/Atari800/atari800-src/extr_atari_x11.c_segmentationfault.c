
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_ErrExit () ;
 int exit (int ) ;

__attribute__((used)) static void segmentationfault(int x)
{
 Atari800_ErrExit();
 exit(0);
}
