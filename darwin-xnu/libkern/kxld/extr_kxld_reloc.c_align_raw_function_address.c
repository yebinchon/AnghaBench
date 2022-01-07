
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long kxld_addr_t ;
struct TYPE_3__ {int function_align; } ;
typedef TYPE_1__ KXLDRelocator ;



__attribute__((used)) static kxld_addr_t
align_raw_function_address(const KXLDRelocator *relocator, kxld_addr_t value)
{
    if (relocator->function_align) {
        value &= ~((1ULL << relocator->function_align) - 1);
    }

    return value;
}
