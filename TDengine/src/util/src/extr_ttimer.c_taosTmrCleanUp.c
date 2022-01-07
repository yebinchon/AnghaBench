
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* label; struct TYPE_3__* next; } ;
typedef TYPE_1__ tmr_ctrl_t ;


 int assert (int) ;
 int numOfTmrCtrl ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tmrCtrlMutex ;
 int tmrTrace (char*,scalar_t__*) ;
 TYPE_1__* unusedTmrCtrl ;

void taosTmrCleanUp(void* handle) {
  tmr_ctrl_t* ctrl = (tmr_ctrl_t*)handle;
  assert(ctrl != ((void*)0) && ctrl->label[0] != 0);

  tmrTrace("%s timer controller is cleaned up.", ctrl->label);
  ctrl->label[0] = 0;

  pthread_mutex_lock(&tmrCtrlMutex);
  ctrl->next = unusedTmrCtrl;
  numOfTmrCtrl--;
  unusedTmrCtrl = ctrl;
  pthread_mutex_unlock(&tmrCtrlMutex);
}
