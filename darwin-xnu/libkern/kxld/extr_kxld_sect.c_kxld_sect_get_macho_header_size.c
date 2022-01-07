
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct section_64 {int dummy; } ;
struct section {int dummy; } ;
typedef scalar_t__ boolean_t ;



u_long
kxld_sect_get_macho_header_size(boolean_t is_32_bit)
{
    if (is_32_bit) {
        return sizeof(struct section);
    } else {
        return sizeof(struct section_64);
    }
}
