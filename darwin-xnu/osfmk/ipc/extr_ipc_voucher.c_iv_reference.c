
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ipc_voucher_t ;
struct TYPE_3__ {int iv_refs; } ;


 int os_ref_retain (int *) ;

__attribute__((used)) static inline void
iv_reference(ipc_voucher_t iv)
{
 os_ref_retain(&iv->iv_refs);
}
