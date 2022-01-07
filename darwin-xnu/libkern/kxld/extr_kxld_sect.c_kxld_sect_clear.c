
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int relocs; scalar_t__ reserved2; scalar_t__ reserved1; scalar_t__ align; scalar_t__ flags; scalar_t__ size; scalar_t__ link_addr; scalar_t__ base_addr; int * data; int segname; int sectname; scalar_t__ allocated; } ;
typedef TYPE_1__ KXLDSect ;


 scalar_t__ FALSE ;
 int bzero (int ,int) ;
 int check (TYPE_1__*) ;
 int kxld_array_clear (int *) ;
 int kxld_free (int *,int ) ;

void
kxld_sect_clear(KXLDSect *sect)
{
    check(sect);

    if (sect->allocated) {
        kxld_free(sect->data, (u_long) sect->size);
        sect->allocated = FALSE;
    }

    bzero(sect->sectname, sizeof(sect->sectname));
    bzero(sect->segname, sizeof(sect->segname));
    sect->data = ((void*)0);
    sect->base_addr = 0;
    sect->link_addr = 0;
    sect->size = 0;
    sect->flags = 0;
    sect->align = 0;
    sect->reserved1 = 0;
    sect->reserved2 = 0;
    kxld_array_clear(&sect->relocs);
}
