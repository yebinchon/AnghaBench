
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int trace_t ;
typedef int clipHandle_t ;


 int CG_CM_CAPSULETRACE ;
 int syscall (int ,int *,int const,int const,int const,int const,int ,int) ;

void trap_CM_CapsuleTrace( trace_t *results, const vec3_t start, const vec3_t end,
        const vec3_t mins, const vec3_t maxs,
        clipHandle_t model, int brushmask ) {
 syscall( CG_CM_CAPSULETRACE, results, start, end, mins, maxs, model, brushmask );
}
