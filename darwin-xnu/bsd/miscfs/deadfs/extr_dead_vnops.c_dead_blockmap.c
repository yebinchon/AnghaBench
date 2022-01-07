
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_blockmap_args {int a_context; int a_flags; int a_poff; int a_run; int a_bpn; int a_size; int a_foffset; int a_vp; } ;


 int EIO ;
 int VNOP_BLOCKMAP (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int chkvnlock (int ) ;

int
dead_blockmap(struct vnop_blockmap_args *ap)
{

 if (!chkvnlock(ap->a_vp))
  return (EIO);
 return (VNOP_BLOCKMAP(ap->a_vp, ap->a_foffset, ap->a_size, ap->a_bpn,
                  ap->a_run, ap->a_poff, ap->a_flags, ap->a_context));
}
