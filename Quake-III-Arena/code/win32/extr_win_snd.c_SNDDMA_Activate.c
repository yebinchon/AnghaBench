
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int hWnd; } ;
struct TYPE_6__ {TYPE_1__* lpVtbl; } ;
struct TYPE_5__ {scalar_t__ (* SetCooperativeLevel ) (TYPE_2__*,int ,int ) ;} ;


 int Com_Printf (char*) ;
 int DSSCL_PRIORITY ;
 scalar_t__ DS_OK ;
 int SNDDMA_Shutdown () ;
 TYPE_4__ g_wv ;
 TYPE_2__* pDS ;
 scalar_t__ stub1 (TYPE_2__*,int ,int ) ;

void SNDDMA_Activate( void ) {
 if ( !pDS ) {
  return;
 }

 if ( DS_OK != pDS->lpVtbl->SetCooperativeLevel( pDS, g_wv.hWnd, DSSCL_PRIORITY ) ) {
  Com_Printf ("sound SetCooperativeLevel failed\n");
  SNDDMA_Shutdown ();
 }
}
