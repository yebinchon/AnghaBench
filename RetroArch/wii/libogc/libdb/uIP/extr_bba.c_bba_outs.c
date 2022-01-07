
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bba_deselect () ;
 int bba_outsnoselect (int ,void*,int ) ;
 int bba_select () ;

__attribute__((used)) static void bba_outs(u32 reg,void *val,u32 len)
{
 bba_select();
 bba_outsnoselect(reg,val,len);
 bba_deselect();
}
