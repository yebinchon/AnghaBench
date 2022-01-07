
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int flags; } ;


 int UPL_CLEAR_DIRTY ;

void
upl_clear_dirty(
 upl_t upl,
 boolean_t value)
{
 if (value) {
  upl->flags |= UPL_CLEAR_DIRTY;
 } else {
  upl->flags &= ~UPL_CLEAR_DIRTY;
 }
}
