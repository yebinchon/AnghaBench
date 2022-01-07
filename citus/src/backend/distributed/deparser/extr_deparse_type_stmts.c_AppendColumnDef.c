
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ colname; int is_not_null; int typeName; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef TYPE_1__ ColumnDef ;


 int Assert (int) ;
 char* FormatCollateBEQualified (int ) ;
 int GetColumnDefCollation (int *,TYPE_1__*,int ) ;
 int LookupTypeNameOid (int *,int ,int) ;
 scalar_t__ OidIsValid (int ) ;
 int appendStringInfo (int ,char*,char const*) ;
 char const* format_type_be_qualified (int ) ;
 char const* quote_identifier (scalar_t__) ;

__attribute__((used)) static void
AppendColumnDef(StringInfo str, ColumnDef *columnDef)
{
 Oid typeOid = LookupTypeNameOid(((void*)0), columnDef->typeName, 0);
 Oid collationOid = GetColumnDefCollation(((void*)0), columnDef, typeOid);

 Assert(!columnDef->is_not_null);

 if (columnDef->colname)
 {
  appendStringInfo(str, "%s ", quote_identifier(columnDef->colname));
 }

 appendStringInfo(str, "%s", format_type_be_qualified(typeOid));

 if (OidIsValid(collationOid))
 {
  const char *identifier = FormatCollateBEQualified(collationOid);
  appendStringInfo(str, " COLLATE %s", identifier);
 }
}
