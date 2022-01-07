
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* soundRegistered; void* rendererStarted; void* cgameStarted; void* uiStarted; } ;
struct TYPE_3__ {int (* Shutdown ) (void*) ;} ;


 int CL_ShutdownCGame () ;
 int CL_ShutdownUI () ;
 int S_DisableSounds () ;
 TYPE_2__ cls ;
 void* qfalse ;
 TYPE_1__ re ;
 int stub1 (void*) ;

void CL_ShutdownAll(void) {


 S_DisableSounds();

 CL_ShutdownCGame();

 CL_ShutdownUI();


 if ( re.Shutdown ) {
  re.Shutdown( qfalse );
 }

 cls.uiStarted = qfalse;
 cls.cgameStarted = qfalse;
 cls.rendererStarted = qfalse;
 cls.soundRegistered = qfalse;
}
