
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* vnode_t ;
struct knote {int kn_flags; int kn_filter; long kn_sfflags; long kn_fflags; int kn_data; TYPE_2__* kn_fp; } ;
struct TYPE_9__ {int v_lock; } ;
struct TYPE_8__ {TYPE_1__* f_fglob; } ;
struct TYPE_7__ {int fg_offset; } ;





 int EV_EOF ;
 int EV_ONESHOT ;
 int EV_POLL ;
 int LCK_MTX_ASSERT_OWNED ;
 long NOTE_REVOKE ;
 int lck_mtx_assert (int *,int ) ;
 int panic (char*) ;
 int vnode_readable_data_count (TYPE_3__*,int ,int) ;
 int vnode_writable_space_count (TYPE_3__*) ;

__attribute__((used)) static int
filt_vnode_common(struct knote *kn, vnode_t vp, long hint)
{
 int activate = 0;

 lck_mtx_assert(&vp->v_lock, LCK_MTX_ASSERT_OWNED);


 if (NOTE_REVOKE == hint) {
  kn->kn_flags |= (EV_EOF | EV_ONESHOT);
  activate = 1;

  if ((kn->kn_filter == 129) && (kn->kn_sfflags & NOTE_REVOKE)) {
   kn->kn_fflags |= NOTE_REVOKE;
  }
 } else {
  switch(kn->kn_filter) {
   case 130:
    kn->kn_data = vnode_readable_data_count(vp, kn->kn_fp->f_fglob->fg_offset, (kn->kn_flags & EV_POLL));

    if (kn->kn_data != 0) {
     activate = 1;
    }
    break;
   case 128:
    kn->kn_data = vnode_writable_space_count(vp);

    if (kn->kn_data != 0) {
     activate = 1;
    }
    break;
   case 129:

    if (kn->kn_sfflags & hint) {
     kn->kn_fflags |= hint;
    }
    if (kn->kn_fflags != 0) {
     activate = 1;
    }
    break;
   default:
    panic("Invalid knote filter on a vnode!\n");
  }
 }
 return (activate);
}
