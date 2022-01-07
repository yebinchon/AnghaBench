
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u64 ;
typedef int u32 ;


 int EXCLUDE_REG ;
 int HOST_REGS ;
 char TEMPREG ;
 int emit_loadreg (char,int) ;
 int emit_mov (int,int) ;
 int emit_storereg (char,int) ;
 scalar_t__ get_reg (char*,char) ;

void wb_invalidate(signed char pre[],signed char entry[],u32 dirty, u64 u)
{
  int hr;
  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(pre[hr]!=entry[hr]) {
        if(pre[hr]>=0) {
          if((dirty>>hr)&1) {
            if(!((u>>pre[hr])&1)) {
              int nr;
              if((nr=get_reg(entry,pre[hr]))<0) {
                emit_storereg(pre[hr],hr);
              }else{

                if(pre[nr]>=0)
                  if(get_reg(entry,pre[nr])>=0)
                    emit_storereg(pre[hr],hr);
              }
            }
          }
        }
      }
    }
  }

  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(pre[hr]!=entry[hr]) {
        if(pre[hr]>=0&&(pre[hr]&63)<TEMPREG) {
          int nr;
          if((nr=get_reg(entry,pre[hr]))>=0) {
            if(pre[nr]<0||get_reg(entry,pre[nr])<0) {
              emit_mov(hr,nr);
            }
          }
        }
      }
    }
  }

  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(pre[hr]!=entry[hr]) {
        if(pre[hr]>=0&&(pre[hr]&63)<TEMPREG) {
          int nr;
          if((nr=get_reg(entry,pre[hr]))>=0) {
            if(pre[nr]>=0) {
              if(get_reg(entry,pre[nr])>=0) {
                emit_loadreg(pre[hr],nr);
              }
            }
          }
        }
      }
    }
  }
}
