
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid_command {int has_uuid; int uuid; } ;
typedef struct uuid_command KXLDuuid ;


 int TRUE ;
 int check (struct uuid_command*) ;
 int memcpy (int ,int ,int) ;

void
kxld_uuid_init_from_macho(KXLDuuid *uuid, struct uuid_command *src)
{
    check(uuid);
    check(src);

    memcpy(uuid->uuid, src->uuid, sizeof(uuid->uuid));
    uuid->has_uuid = TRUE;
}
