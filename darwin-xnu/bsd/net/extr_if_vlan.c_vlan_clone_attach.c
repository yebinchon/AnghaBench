
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int if_clone_attach (int *) ;
 int vlan_cloner ;
 int vlan_lock_init () ;

__attribute__((used)) static int
vlan_clone_attach(void)
{
    int error;

    error = if_clone_attach(&vlan_cloner);
    if (error != 0)
        return error;
    vlan_lock_init();
    return 0;
}
