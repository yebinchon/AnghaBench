
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int q68_destroy (int *) ;
 int * state ;

__attribute__((used)) static void m68kq68_deinit(void)
{
    q68_destroy(state);
    state = ((void*)0);
}
