
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dofh_loadsz; } ;
typedef TYPE_1__ dof_hdr_t ;


 int kmem_free_aligned (TYPE_1__*,int ) ;

__attribute__((used)) static void
dtrace_dof_destroy(dof_hdr_t *dof)
{
 kmem_free_aligned(dof, dof->dofh_loadsz);
}
