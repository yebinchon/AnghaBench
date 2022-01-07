
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int clipHandle_t ;


 int UI_R_MODELBOUNDS ;
 int syscall (int ,int ,int ,int ) ;

void trap_R_ModelBounds( clipHandle_t model, vec3_t mins, vec3_t maxs ) {
 syscall( UI_R_MODELBOUNDS, model, mins, maxs );
}
