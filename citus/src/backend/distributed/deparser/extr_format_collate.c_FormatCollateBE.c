
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* FormatCollateExtended (int ,int ) ;

char *
FormatCollateBE(Oid collate_oid)
{
 return FormatCollateExtended(collate_oid, 0);
}
