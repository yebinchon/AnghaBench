
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int gentity_t ;


 int G_ADJUST_AREA_PORTAL_STATE ;
 int syscall (int ,int *,int ) ;

void trap_AdjustAreaPortalState( gentity_t *ent, qboolean open ) {
 syscall( G_ADJUST_AREA_PORTAL_STATE, ent, open );
}
