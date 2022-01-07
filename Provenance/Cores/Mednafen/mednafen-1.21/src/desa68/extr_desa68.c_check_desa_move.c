
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int line; int adrmode0; int adrmode6; } ;


 int MODE_AN ;
 TYPE_1__ d ;
 int desa_move () ;

__attribute__((used)) static int check_desa_move()
{
  u32 srcmsk = 0xFFF;
  u32 destmsk = 0x1FF;

  if(d.line==0x1)
    {
      srcmsk &= ~(1<<MODE_AN);
      destmsk &= ~(1<<MODE_AN);
    }
  if((srcmsk&(1<<d.adrmode0 )) && (destmsk&(1<<d.adrmode6)) );
  {
    desa_move();
    return 1;
  }
  return 0;

}
