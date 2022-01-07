
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int inportb (int) ;
 int outportb (int,int ) ;
 int sleep (int) ;

__attribute__((used)) static int DetectJoystick(void)
{
 uint8 b;

 outportb(0x201,0);
 b=inportb(0x201);
 sleep(1);
 if((inportb(0x201)&3)==(b&3))
  return 0;
 else
  return 1;
}
