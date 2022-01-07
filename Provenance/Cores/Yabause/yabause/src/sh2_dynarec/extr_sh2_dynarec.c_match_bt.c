
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* regmap_entry; int dirty; } ;


 char CCREG ;
 int EXCLUDE_REG ;
 size_t HOST_CCREG ;
 int HOST_REGS ;
 char TEMPREG ;
 scalar_t__* is_ds ;
 TYPE_1__* regs ;
 int slen ;
 int start ;
 char* unneeded_reg ;

int match_bt(signed char i_regmap[],u32 i_dirty,int addr)
{
  if(addr>=start && addr<start+slen*2-2)
  {
    int t=(addr-start)>>1;
    int hr;
    if(regs[t].regmap_entry[HOST_CCREG]!=CCREG) return 0;
    for(hr=0;hr<HOST_REGS;hr++)
    {
      if(hr!=EXCLUDE_REG)
      {
        if(i_regmap[hr]!=regs[t].regmap_entry[hr])
        {
          if(regs[t].regmap_entry[hr]>=0&&regs[t].regmap_entry[hr]<TEMPREG)
          {
            return 0;
          }
          else
          if((i_dirty>>hr)&1)
          {
            if(!((unneeded_reg[t]>>i_regmap[hr])&1))
              return 0;
          }
        }
        else
        if(i_regmap[hr]>=0)
        {
          if(!((regs[t].dirty>>hr)&1))
          {
            if((i_dirty>>hr)&1)
            {
              if(!((unneeded_reg[t]>>i_regmap[hr])&1))
              {

                return 0;
              }
            }
          }
        }
      }
    }

    if(is_ds[t]) return 0;
  }
  else
  {
    int hr;
    for(hr=0;hr<HOST_REGS;hr++)
    {
      if(hr!=EXCLUDE_REG)
      {
        if(i_regmap[hr]>=0)
        {
          if(hr!=HOST_CCREG||i_regmap[hr]!=CCREG)
          {
            if((i_dirty>>hr)&1)
            {
              return 0;
            }
          }
        }
      }
    }
  }
  return 1;
}
