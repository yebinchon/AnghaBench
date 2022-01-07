
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int ext_ref_count; } ;


 int panic (char*,TYPE_1__*) ;
 int upl_lock (TYPE_1__*) ;
 int upl_unlock (TYPE_1__*) ;

void
upl_set_referenced(
 upl_t upl,
 boolean_t value)
{
 upl_lock(upl);
 if (value) {
  upl->ext_ref_count++;
 } else {
  if (!upl->ext_ref_count) {
   panic("upl_set_referenced not %p\n", upl);
  }
  upl->ext_ref_count--;
 }
 upl_unlock(upl);
}
