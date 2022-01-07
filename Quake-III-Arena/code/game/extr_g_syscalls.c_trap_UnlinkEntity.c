
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int G_UNLINKENTITY ;
 int syscall (int ,int *) ;

void trap_UnlinkEntity( gentity_t *ent ) {
 syscall( G_UNLINKENTITY, ent );
}
