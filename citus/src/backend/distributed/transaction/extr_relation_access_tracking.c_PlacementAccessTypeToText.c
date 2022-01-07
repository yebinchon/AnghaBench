
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ShardPlacementAccessType ;






__attribute__((used)) static char *
PlacementAccessTypeToText(ShardPlacementAccessType accessType)
{
 switch (accessType)
 {
  case 128:
  {
   return "SELECT";
   break;
  }

  case 129:
  {
   return "DML";
  }

  case 130:
  {
   return "DDL";
  }

  default:
  {
   return "None";
   break;
  }
 }
}
