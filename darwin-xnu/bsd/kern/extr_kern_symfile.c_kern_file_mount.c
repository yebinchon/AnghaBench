
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int dummy; } ;
struct kern_direct_file_io_ref_t {TYPE_1__* vp; } ;
struct TYPE_2__ {struct mount* v_mount; } ;



struct mount *
kern_file_mount(struct kern_direct_file_io_ref_t * ref)
{
    return (ref->vp->v_mount);
}
