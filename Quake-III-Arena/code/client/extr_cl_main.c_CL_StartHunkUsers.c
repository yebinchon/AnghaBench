
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* uiStarted; void* soundRegistered; void* soundStarted; void* rendererStarted; } ;
struct TYPE_3__ {int integer; } ;


 int CL_InitRenderer () ;
 int CL_InitUI () ;
 int S_BeginRegistration () ;
 int S_Init () ;
 TYPE_2__ cls ;
 TYPE_1__* com_cl_running ;
 void* qtrue ;

void CL_StartHunkUsers( void ) {
 if (!com_cl_running) {
  return;
 }

 if ( !com_cl_running->integer ) {
  return;
 }

 if ( !cls.rendererStarted ) {
  cls.rendererStarted = qtrue;
  CL_InitRenderer();
 }

 if ( !cls.soundStarted ) {
  cls.soundStarted = qtrue;
  S_Init();
 }

 if ( !cls.soundRegistered ) {
  cls.soundRegistered = qtrue;
  S_BeginRegistration();
 }

 if ( !cls.uiStarted ) {
  cls.uiStarted = qtrue;
  CL_InitUI();
 }
}
