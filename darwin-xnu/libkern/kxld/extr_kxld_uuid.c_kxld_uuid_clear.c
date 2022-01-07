
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KXLDuuid ;


 int bzero (int *,int) ;

void
kxld_uuid_clear(KXLDuuid *uuid)
{
    bzero(uuid, sizeof(*uuid));
}
