
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vlan_globals_ref ;
struct TYPE_5__ {scalar_t__ verbose; int parent_list; } ;


 int ENOMEM ;
 int LIST_INIT (int *) ;
 int M_VLAN ;
 int M_WAITOK ;
 int _FREE (TYPE_1__*,int ) ;
 TYPE_1__* _MALLOC (int,int ,int ) ;
 TYPE_1__* g_vlan ;
 int vlan_assert_lock_not_held () ;
 int vlan_lock () ;
 int vlan_unlock () ;

__attribute__((used)) static int
vlan_globals_init(void)
{
    vlan_globals_ref v;

    vlan_assert_lock_not_held();

    if (g_vlan != ((void*)0)) {
 return (0);
    }
    v = _MALLOC(sizeof(*v), M_VLAN, M_WAITOK);
    if (v != ((void*)0)) {
 LIST_INIT(&v->parent_list);
 v->verbose = 0;
    }
    vlan_lock();
    if (g_vlan != ((void*)0)) {
 vlan_unlock();
 if (v != ((void*)0)) {
     _FREE(v, M_VLAN);
 }
 return (0);
    }
    g_vlan = v;
    vlan_unlock();
    if (v == ((void*)0)) {
 return (ENOMEM);
    }
    return (0);
}
