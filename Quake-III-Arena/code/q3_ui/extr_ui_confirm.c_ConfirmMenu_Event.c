
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {scalar_t__ id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_4__ {int (* action ) (int ) ;} ;


 scalar_t__ ID_CONFIRM_NO ;
 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 int qfalse ;
 int qtrue ;
 TYPE_2__ s_confirm ;
 int stub1 (int ) ;

__attribute__((used)) static void ConfirmMenu_Event( void* ptr, int event ) {
 qboolean result;

 if( event != QM_ACTIVATED ) {
  return;
 }

 UI_PopMenu();

 if( ((menucommon_s*)ptr)->id == ID_CONFIRM_NO ) {
  result = qfalse;
 }
 else {
  result = qtrue;
 }

 if( s_confirm.action ) {
  s_confirm.action( result );
 }
}
