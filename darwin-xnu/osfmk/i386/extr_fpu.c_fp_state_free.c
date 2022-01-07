
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t xstate_t ;


 int assert (int ) ;
 int ** ifps_zone ;
 int zfree (int *,void*) ;

__attribute__((used)) static inline void
fp_state_free(void *ifps, xstate_t xs)
{
 assert(ifps_zone[xs] != ((void*)0));
 zfree(ifps_zone[xs], ifps);
}
