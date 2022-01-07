
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int s32 ;
struct TYPE_2__ {int w; } ;


 TYPE_1__ d ;
 int read_pc () ;

__attribute__((used)) static s32 indAnXi()
{
  s32 v;
  read_pc();
  v = (d.w&0x8000)? ('A'<<24) : ('D'<<24);
  v |= ('0'+((d.w>>12)&7)) << 16;
  v |= (u8)d.w<<8;
  v |= ((d.w&(1<<11))? 'L' : 'W');
  return v;
}
