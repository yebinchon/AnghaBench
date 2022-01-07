
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* cpx_t ;
struct TYPE_4__ {size_t cpx_max_key_len; scalar_t__ cpx_key_len; scalar_t__ cpx_flags; int cpx_magic1; } ;


 int * PTR_ADD (int ,TYPE_1__*,scalar_t__) ;
 int cpx_magic1 ;
 int cpx_magic2 ;
 scalar_t__ cpx_size (size_t) ;
 int uint32_t ;

void cpx_init(cpx_t cpx, size_t key_len)
{




 cpx->cpx_flags = 0;
 cpx->cpx_key_len = 0;
 cpx->cpx_max_key_len = key_len;
}
