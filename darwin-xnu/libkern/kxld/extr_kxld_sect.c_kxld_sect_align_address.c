
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kxld_addr_t ;
struct TYPE_3__ {int align; } ;
typedef TYPE_1__ KXLDSect ;


 int kxld_align_address (int ,int ) ;

kxld_addr_t
kxld_sect_align_address(const KXLDSect *sect, kxld_addr_t address)
{
    return kxld_align_address(address, sect->align);
}
