
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prof_tctx_t ;


 int huge_prof_tctx_set (void const*,int *) ;

void
huge_prof_tctx_reset(const void *ptr)
{

 huge_prof_tctx_set(ptr, (prof_tctx_t *)(uintptr_t)1U);
}
