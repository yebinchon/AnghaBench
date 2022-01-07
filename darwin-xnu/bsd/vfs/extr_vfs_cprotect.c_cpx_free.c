
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int vm_map_offset_t ;
typedef int uint8_t ;
typedef TYPE_1__* cpx_t ;
struct TYPE_6__ {scalar_t__ cpx_magic1; int cpx_flags; int cpx_max_key_len; int cpx_cached_key; } ;


 int CPX_WRITE_PROTECTABLE ;
 int FALSE ;
 int FREE (TYPE_1__*,int ) ;
 int M_TEMP ;
 int PAGE_SIZE ;
 scalar_t__* PTR_ADD (int ,TYPE_1__*,scalar_t__) ;
 int VM_PROT_DEFAULT ;
 int assert (int) ;
 int bzero (int ,int ) ;
 scalar_t__ cpx_magic1 ;
 scalar_t__ cpx_magic2 ;
 scalar_t__ cpx_sizex (TYPE_1__*) ;
 int kernel_map ;
 int kmem_free (int ,int ,int) ;
 int uint32_t ;
 int vm_map_protect (int ,int ,int ,int ,int ) ;

void cpx_free(cpx_t cpx)
{
 bzero(cpx->cpx_cached_key, cpx->cpx_max_key_len);
 FREE(cpx, M_TEMP);
 return;


}
