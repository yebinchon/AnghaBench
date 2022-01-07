
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
typedef int bsp_trace_t ;
struct TYPE_2__ {int (* Trace ) (int *,int ,int ,int ,int ,int,int) ;} ;


 TYPE_1__ botimport ;
 int stub1 (int *,int ,int ,int ,int ,int,int) ;

bsp_trace_t AAS_Trace(vec3_t start, vec3_t mins, vec3_t maxs, vec3_t end, int passent, int contentmask)
{
 bsp_trace_t bsptrace;
 botimport.Trace(&bsptrace, start, mins, maxs, end, passent, contentmask);
 return bsptrace;
}
