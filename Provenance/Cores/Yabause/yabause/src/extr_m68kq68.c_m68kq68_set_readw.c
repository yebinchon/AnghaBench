
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Q68ReadFunc ;
typedef int M68K_READ ;


 int q68_set_readw_func (int ,int *) ;
 int * readw_trampoline ;
 int * real_readw ;
 int state ;

__attribute__((used)) static void m68kq68_set_readw(M68K_READ *func)
{




    q68_set_readw_func(state, (Q68ReadFunc *)func);

}
