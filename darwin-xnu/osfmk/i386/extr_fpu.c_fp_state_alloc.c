
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t xstate_t ;
typedef void x86_fx_thread_state ;
struct TYPE_3__ {scalar_t__ alloc_size; scalar_t__ free_elements; scalar_t__ elem_size; } ;


 int ALIGNED (void*,int) ;
 int assert (int ) ;
 int bzero (void*,int ) ;
 int * fp_state_size ;
 TYPE_1__** ifps_zone ;
 int panic (char*,void*,unsigned int,void*,unsigned int) ;
 void* zalloc (TYPE_1__*) ;

__attribute__((used)) static void *
fp_state_alloc(xstate_t xs)
{
 struct x86_fx_thread_state *ifps;

 assert(ifps_zone[xs] != ((void*)0));
 ifps = zalloc(ifps_zone[xs]);
 bzero(ifps, fp_state_size[xs]);

 return ifps;
}
