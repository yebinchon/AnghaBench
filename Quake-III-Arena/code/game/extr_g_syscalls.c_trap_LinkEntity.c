
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int G_LINKENTITY ;
 int syscall (int ,int *) ;

void trap_LinkEntity( gentity_t *ent ) {
 syscall( G_LINKENTITY, ent );
}
