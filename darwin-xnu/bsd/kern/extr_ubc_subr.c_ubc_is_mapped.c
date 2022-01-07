
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_ubcinfo; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {int ui_flags; } ;


 scalar_t__ FALSE ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ TRUE ;
 int UBCINFOEXISTS (struct vnode const*) ;
 int UI_ISMAPPED ;
 int UI_MAPPEDWRITE ;

boolean_t ubc_is_mapped(const struct vnode *vp, boolean_t *writable)
{
 if (!UBCINFOEXISTS(vp) || !ISSET(vp->v_ubcinfo->ui_flags, UI_ISMAPPED))
  return FALSE;
 if (writable)
  *writable = ISSET(vp->v_ubcinfo->ui_flags, UI_MAPPEDWRITE);
 return TRUE;
}
