
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int EXCLUDE_REG ;
 int HOST_REGS ;
 int TBIT ;
 int emit_storereg (int,int) ;

void wb_valid(signed char pre[],signed char entry[],u32 dirty_pre,u32 dirty,u64 u)
{

  int hr,reg,new_hr;
  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      reg=pre[hr];
      if(((~u)>>(reg&63))&1) {
        if(reg>=0) {
          if(((dirty_pre&~dirty)>>hr)&1) {
            if(reg>=0&&reg<TBIT) {
              emit_storereg(reg,hr);
            }
          }
        }
      }
    }
  }
}
