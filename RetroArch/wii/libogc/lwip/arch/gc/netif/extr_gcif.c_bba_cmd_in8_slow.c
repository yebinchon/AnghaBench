
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u32 ;


 int bba_cmd_insnosel (int ,int *,int) ;
 int bba_deselect () ;
 int bba_select () ;
 int udelay (int) ;

__attribute__((used)) static inline u8 bba_cmd_in8_slow(u32 reg)
{
 u8 val;
 bba_select();
 bba_cmd_insnosel(reg,&val,sizeof(val));
 udelay(200);
 bba_deselect();
 return val;
}
