
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* activeApp; scalar_t__ isMinimized; } ;
typedef scalar_t__ BOOL ;


 int Com_DPrintf (char*,scalar_t__) ;
 int IN_Activate (void*) ;
 int Key_ClearStates () ;
 TYPE_1__ g_wv ;
 void* qfalse ;
 void* qtrue ;

__attribute__((used)) static void VID_AppActivate(BOOL fActive, BOOL minimize)
{
 g_wv.isMinimized = minimize;

 Com_DPrintf("VID_AppActivate: %i\n", fActive );

 Key_ClearStates();


 if (fActive && !g_wv.isMinimized )
 {
  g_wv.activeApp = qtrue;
 }
 else
 {
  g_wv.activeApp = qfalse;
 }


 if (!g_wv.activeApp )
 {
  IN_Activate (qfalse);
 }
 else
 {
  IN_Activate (qtrue);
 }
}
