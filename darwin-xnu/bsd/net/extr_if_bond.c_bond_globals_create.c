
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * lacp_system_ref ;
typedef int lacp_system_priority ;
typedef TYPE_1__* bond_globals_ref ;
struct TYPE_4__ {int system_priority; int system; int ifbond_list; } ;


 int M_BOND ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 TYPE_1__* _MALLOC (int,int ,int) ;

__attribute__((used)) static bond_globals_ref
bond_globals_create(lacp_system_priority sys_pri,
      lacp_system_ref sys)
{
    bond_globals_ref b;

    b = _MALLOC(sizeof(*b), M_BOND, M_WAITOK | M_ZERO);
    if (b == ((void*)0)) {
 return (((void*)0));
    }
    TAILQ_INIT(&b->ifbond_list);
    b->system = *sys;
    b->system_priority = sys_pri;
    return (b);
}
