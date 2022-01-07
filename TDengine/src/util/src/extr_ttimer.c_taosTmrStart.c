
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmr_obj_t ;
typedef int * tmr_h ;
struct TYPE_3__ {scalar_t__* label; } ;
typedef TYPE_1__ tmr_ctrl_t ;
typedef int TAOS_TMR_CALLBACK ;


 scalar_t__ calloc (int,int) ;
 int doStartTimer (int *,int ,int,void*,TYPE_1__*) ;
 int tmrError (char*,scalar_t__*) ;

tmr_h taosTmrStart(TAOS_TMR_CALLBACK fp, int mseconds, void* param, void* handle) {
  tmr_ctrl_t* ctrl = (tmr_ctrl_t*)handle;
  if (ctrl == ((void*)0) || ctrl->label[0] == 0) {
    return ((void*)0);
  }

  tmr_obj_t* timer = (tmr_obj_t*)calloc(1, sizeof(tmr_obj_t));
  if (timer == ((void*)0)) {
    tmrError("%s failed to allocated memory for new timer object.", ctrl->label);
    return ((void*)0);
  }

  return (tmr_h)doStartTimer(timer, fp, mseconds, param, ctrl);
}
