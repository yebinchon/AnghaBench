
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u32 ;


 int bba_cmd_outs (int ,int *,int) ;

__attribute__((used)) static inline void bba_cmd_out8(u32 reg,u8 val)
{
 bba_cmd_outs(reg,&val,sizeof(val));
}
