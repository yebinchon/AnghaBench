
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXCLUDE_REG ;
 int HOST_REGS ;
 char TEMPREG ;
 int assem_debug (char*) ;
 int emit_loadreg (char,int) ;
 scalar_t__ get_reg (char*,char) ;

__attribute__((used)) static void loop_preload(signed char pre[],signed char entry[])
{
  int hr;
  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(pre[hr]!=entry[hr]) {
        if(entry[hr]>=0) {
          if(get_reg(pre,entry[hr])<0) {
            assem_debug("loop preload:\n");

            if(entry[hr]<TEMPREG)
            {
              emit_loadreg(entry[hr],hr);
            }
          }
        }
      }
    }
  }
}
