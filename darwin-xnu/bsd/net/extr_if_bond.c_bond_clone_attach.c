
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bond_cloner ;
 int bond_lock_init () ;
 int if_clone_attach (int *) ;

__attribute__((used)) static int
bond_clone_attach(void)
{
    int error;

    if ((error = if_clone_attach(&bond_cloner)) != 0)
 return error;
    bond_lock_init();
    return 0;
}
