
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int kext; } ;
typedef TYPE_1__ KXLDKext ;


 int kxld_object_get_vmsize (int ,int *,int *) ;

void
kxld_kext_get_vmsize(const KXLDKext *kext,
    u_long *header_size, u_long *vmsize)
{
    (void) kxld_object_get_vmsize(kext->kext, header_size, vmsize);
}
