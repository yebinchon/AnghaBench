
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_16__ {int flags; int (* req_cb ) (TYPE_1__*) ;void* state; int (* done_cb ) (TYPE_1__*) ;struct TYPE_16__* next; int (* res_cb ) (TYPE_1__*) ;int (* init_cb ) (TYPE_1__*) ;} ;


 int DSPTASK_CANCEL ;
 void* DSPTASK_DONE ;
 void* DSPTASK_RUN ;
 void* DSPTASK_YIELD ;
 int DSP_CheckMailFrom () ;
 int DSP_CheckMailTo () ;
 int DSP_ReadMailFrom () ;
 int DSP_SendMailTo (int) ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* __dsp_currtask ;
 int __dsp_exectask (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* __dsp_firsttask ;
 TYPE_1__* __dsp_lasttask ;
 int __dsp_removetask (TYPE_1__*) ;
 TYPE_1__* __dsp_rudetask ;
 int __dsp_rudetask_pend ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;
 int stub4 (TYPE_1__*) ;
 int stub5 (TYPE_1__*) ;
 int stub6 (TYPE_1__*) ;
 int stub7 (TYPE_1__*) ;
 int stub8 (TYPE_1__*) ;

__attribute__((used)) static void __dsp_def_taskcb()
{
 u32 mail;
 while(!DSP_CheckMailFrom());

 mail = DSP_ReadMailFrom();
 if(__dsp_currtask->flags&DSPTASK_CANCEL) {
  if(mail==0xDCD10002) mail = 0xDCD10003;
 }

 switch(mail) {
  case 0xDCD10000:
   __dsp_currtask->state = DSPTASK_RUN;
   if(__dsp_currtask->init_cb) __dsp_currtask->init_cb(__dsp_currtask);
   break;
  case 0xDCD10001:
   __dsp_currtask->state = DSPTASK_RUN;
   if(__dsp_currtask->res_cb) __dsp_currtask->res_cb(__dsp_currtask);
   break;
  case 0xDCD10002:
   if(__dsp_rudetask_pend==TRUE) {
    if(__dsp_rudetask==__dsp_currtask) {
     DSP_SendMailTo(0xCDD10003);
     while(DSP_CheckMailTo());

     __dsp_rudetask = ((void*)0);
     __dsp_rudetask_pend = FALSE;
     if(__dsp_currtask->res_cb) __dsp_currtask->res_cb(__dsp_currtask);
    } else {
     DSP_SendMailTo(0xCDD10001);
     while(DSP_CheckMailTo());

     __dsp_exectask(__dsp_currtask,__dsp_rudetask);
     __dsp_currtask->flags = DSPTASK_YIELD;
     __dsp_currtask = __dsp_rudetask;
     __dsp_rudetask = ((void*)0);
     __dsp_rudetask_pend = FALSE;
    }
   } else if(__dsp_currtask->next==((void*)0)) {
    if(__dsp_firsttask==__dsp_currtask) {
     DSP_SendMailTo(0xCDD10003);
     while(DSP_CheckMailTo());

     if(__dsp_currtask->res_cb) __dsp_currtask->res_cb(__dsp_currtask);
    } else {
     DSP_SendMailTo(0xCDD10001);
     while(DSP_CheckMailTo());

     __dsp_exectask(__dsp_currtask,__dsp_firsttask);
     __dsp_currtask->state = DSPTASK_YIELD;
     __dsp_currtask = __dsp_firsttask;
    }
   } else {
    DSP_SendMailTo(0xCDD10001);
    while(DSP_CheckMailTo());

    __dsp_exectask(__dsp_currtask,__dsp_currtask->next);
    __dsp_currtask->state = DSPTASK_YIELD;
    __dsp_currtask = __dsp_currtask->next;
   }
   break;
  case 0xDCD10003:
   if(__dsp_rudetask_pend==TRUE) {
    if(__dsp_currtask->done_cb) __dsp_currtask->done_cb(__dsp_currtask);
    DSP_SendMailTo(0xCDD10001);
    while(DSP_CheckMailTo());

    __dsp_exectask(((void*)0),__dsp_rudetask);
    __dsp_removetask(__dsp_currtask);

    __dsp_currtask = __dsp_rudetask;
    __dsp_rudetask_pend = FALSE;
    __dsp_rudetask = ((void*)0);
   } else if(__dsp_currtask->next==((void*)0)) {
    if(__dsp_firsttask==__dsp_currtask) {
     if(__dsp_currtask->done_cb) __dsp_currtask->done_cb(__dsp_currtask);
     DSP_SendMailTo(0xCDD10002);
     while(DSP_CheckMailTo());

     __dsp_currtask->state = DSPTASK_DONE;
     __dsp_removetask(__dsp_currtask);
    }
   } else {
    if(__dsp_currtask->done_cb) __dsp_currtask->done_cb(__dsp_currtask);

    DSP_SendMailTo(0xCDD10001);
    while(DSP_CheckMailTo());

    __dsp_currtask->state = DSPTASK_DONE;
    __dsp_exectask(((void*)0),__dsp_firsttask);
    __dsp_currtask = __dsp_firsttask;
    __dsp_removetask(__dsp_lasttask);
   }
   break;
  case 0xDCD10004:
   if(__dsp_currtask->req_cb) __dsp_currtask->req_cb(__dsp_currtask);
   break;
 }

}
