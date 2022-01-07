
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linkedit_data_command {int has_splitinfolc; int datasize; int dataoff; int cmdsize; } ;
typedef struct linkedit_data_command KXLDsplitinfolc ;


 int TRUE ;
 int check (struct linkedit_data_command*) ;

void
kxld_splitinfolc_init_from_macho(KXLDsplitinfolc *splitinfolc, struct linkedit_data_command *src)
{
    check(splitinfolc);
    check(src);

    splitinfolc->cmdsize = src->cmdsize;
    splitinfolc->dataoff = src->dataoff;
    splitinfolc->datasize = src->datasize;
    splitinfolc->has_splitinfolc = TRUE;
}
