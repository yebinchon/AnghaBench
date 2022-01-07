
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int get_ea_2 (int,int,int) ;

__attribute__((used)) static void get_ea_move(int bit, s32 w, u32 easz)
{
  u32 ea = (w>>bit)&63;

  if(bit)
    get_ea_2(ea&7,ea>>3, easz);
  else if(bit==0)
    get_ea_2(ea>>3,ea&7, easz);
}
