
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int s32 ;
struct TYPE_2__ {int w; scalar_t__ adrmode6; } ;


 scalar_t__ MODE_AN ;
 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int get_ea_move (int,int,int) ;

__attribute__((used)) static void desa_move()
{
  s32 w=d.w;
  int movsz = (u8)('WLB?' >> ((w&(3<<12))>>(12-3)));
  desa_ascii('MOVE');
  desa_ascii(((d.adrmode6==MODE_AN)? ('A'<<24) : 0) + ('.'<<16) + ' ' + (movsz<<8) );
  get_ea_move(0,w,movsz);
  desa_char(',');
  get_ea_move(6,w,movsz);
}
