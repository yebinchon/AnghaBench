
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; int i; int v; } ;
typedef TYPE_1__ vgareg ;


 int inportb (int) ;
 int outportb (int,int) ;
 int outportw (int,int) ;

__attribute__((used)) static void VGAPortSet(vgareg R)
{
  int p,i,v;

  p=0x300|R.p;
  i=R.i;
  v=R.v;

  switch(p)
  {
    case 0x3C0: inportb(0x3DA);
                outportb(0x3C0,i);
                outportb(0x3C0,v);
                break;
    case 0x3C2:
    case 0x3C3:
    default: outportb(p, v);
                break;
    case 0x3C4: if(i==1)
                {
                 outportw(0x3c4,0x100);
                 outportw(0x3c4,(v<<8)|1);
                 outportw(0x3c4,0x300);
                 break;
                }
    case 0x3CE:
    case 0x3D4: outportw(p,i|(v<<8));
                break;
  }
}
