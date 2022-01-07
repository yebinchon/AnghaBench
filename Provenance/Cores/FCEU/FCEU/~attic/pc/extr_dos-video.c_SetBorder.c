
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inportb (int) ;
 int outportb (int,int) ;

void SetBorder(void)
{
 inportb(0x3da);
 outportb(0x3c0,(0x11|0x20));
 outportb(0x3c0,0x80);
}
