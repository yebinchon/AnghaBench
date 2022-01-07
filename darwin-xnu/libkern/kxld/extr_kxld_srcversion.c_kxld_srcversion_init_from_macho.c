
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct source_version_command {int has_srcversion; int version; } ;
typedef struct source_version_command KXLDsrcversion ;


 int TRUE ;
 int check (struct source_version_command*) ;

void
kxld_srcversion_init_from_macho(KXLDsrcversion *srcversion, struct source_version_command *src)
{
    check(srcversion);
    check(src);

    srcversion->version = src->version;
    srcversion->has_srcversion = TRUE;
}
