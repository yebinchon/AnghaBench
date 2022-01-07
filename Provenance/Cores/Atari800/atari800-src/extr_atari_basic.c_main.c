
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_Frame () ;
 int Atari800_Initialise (int*,char**) ;
 scalar_t__ TRUE ;

int main(int argc, char **argv)
{

 if (!Atari800_Initialise(&argc, argv))
  return 3;


 while (TRUE) {
  Atari800_Frame();
 }
}
