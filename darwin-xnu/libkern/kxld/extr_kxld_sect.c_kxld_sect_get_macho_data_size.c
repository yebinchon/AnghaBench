
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ data; } ;
typedef TYPE_1__ KXLDSect ;


 int check (TYPE_1__ const*) ;

u_long
kxld_sect_get_macho_data_size(const KXLDSect *sect)
{
    u_long size = 0;

    check(sect);

    if (sect->data) {
        size = (u_long) sect->size;
    }

    return size;
}
