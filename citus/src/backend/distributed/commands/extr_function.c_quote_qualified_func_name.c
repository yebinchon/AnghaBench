
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int get_func_name (int ) ;
 int get_func_namespace (int ) ;
 int get_namespace_name (int ) ;
 char* quote_qualified_identifier (int ,int ) ;

__attribute__((used)) static char *
quote_qualified_func_name(Oid funcOid)
{
 return quote_qualified_identifier(
  get_namespace_name(get_func_namespace(funcOid)),
  get_func_name(funcOid));
}
