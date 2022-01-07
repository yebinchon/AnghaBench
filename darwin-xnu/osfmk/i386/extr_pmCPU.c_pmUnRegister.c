
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmDispatch_t ;


 int * pmDispatch ;

void
pmUnRegister(pmDispatch_t *cpuFuncs)
{
    if (cpuFuncs != ((void*)0) && pmDispatch == cpuFuncs) {
 pmDispatch = ((void*)0);
    }
}
