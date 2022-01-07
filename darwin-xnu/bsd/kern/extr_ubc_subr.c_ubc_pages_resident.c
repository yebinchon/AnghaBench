
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {TYPE_1__* v_ubcinfo; } ;
struct TYPE_5__ {int ui_control; } ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int UBCINFOEXISTS (TYPE_2__*) ;
 scalar_t__ memory_object_pages_resident (int ,scalar_t__*) ;

int
ubc_pages_resident(vnode_t vp)
{
 kern_return_t kret;
 boolean_t has_pages_resident;

 if (!UBCINFOEXISTS(vp))
  return (0);







 kret = memory_object_pages_resident(vp->v_ubcinfo->ui_control, &has_pages_resident);

 if (kret != KERN_SUCCESS)
  return (0);

 if (has_pages_resident == TRUE)
  return (1);

 return (0);
}
