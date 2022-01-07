
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int FORMAT_COLLATE_FORCE_QUALIFY ;
 char* FormatCollateExtended (int ,int ) ;

char *
FormatCollateBEQualified(Oid collate_oid)
{
 return FormatCollateExtended(collate_oid, FORMAT_COLLATE_FORCE_QUALIFY);
}
