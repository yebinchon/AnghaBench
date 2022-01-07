
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
typedef int kxld_addr_t ;
struct TYPE_4__ {int is_32_bit; } ;
typedef TYPE_1__ KXLDRelocator ;


 int KXLD_3264_FUNC (int ,int ,int ,int ,TYPE_1__ const*,int const*,int ) ;
 int get_pointer_at_addr_32 ;
 int get_pointer_at_addr_64 ;

kxld_addr_t
kxld_relocator_get_pointer_at_addr(const KXLDRelocator *relocator,
    const u_char *data, u_long offset)
{
    kxld_addr_t value;

    KXLD_3264_FUNC(relocator->is_32_bit, value,
        get_pointer_at_addr_32, get_pointer_at_addr_64,
        relocator, data, offset);

    return value;
}
