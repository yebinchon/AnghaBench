
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ipc_importance_inherit_t ;
struct TYPE_3__ {int iii_elem; } ;


 int ipc_importance_release_locked (int *) ;

__attribute__((used)) static inline void
ipc_importance_inherit_release_locked(ipc_importance_inherit_t inherit)
{
 ipc_importance_release_locked(&inherit->iii_elem);
}
