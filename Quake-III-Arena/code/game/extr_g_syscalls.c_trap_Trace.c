
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int trace_t ;


 int G_TRACE ;
 int syscall (int ,int *,int const,int const,int const,int const,int,int) ;

void trap_Trace( trace_t *results, const vec3_t start, const vec3_t mins, const vec3_t maxs, const vec3_t end, int passEntityNum, int contentmask ) {
 syscall( G_TRACE, results, start, mins, maxs, end, passEntityNum, contentmask );
}
