
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectType ;


 int ERROR ;



 int elog (int ,char*,int) ;

__attribute__((used)) static const char *
ObjectTypeToKeyword(ObjectType objtype)
{
 switch (objtype)
 {
  case 129:
  {
   return "FUNCTION";
  }

  case 128:
  {
   return "PROCEDURE";
  }

  case 130:
  {
   return "AGGREGATE";
  }

  default:
   elog(ERROR, "Unknown object type: %d", objtype);
   return ((void*)0);
 }
}
