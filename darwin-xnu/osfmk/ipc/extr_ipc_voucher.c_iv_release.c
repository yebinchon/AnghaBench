
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ipc_voucher_t ;
struct TYPE_4__ {int iv_refs; } ;


 int TRUE ;
 int iv_dealloc (TYPE_1__*,int ) ;
 scalar_t__ os_ref_release (int *) ;

__attribute__((used)) static inline void
iv_release(ipc_voucher_t iv)
{
 if (os_ref_release(&iv->iv_refs) == 0) {
  iv_dealloc(iv, TRUE);
 }
}
