
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int elog (int ,char*,int) ;

__attribute__((used)) static const char *
convert_aclright_to_string(int aclright)
{

 switch (aclright)
 {
  case 134:
   return "INSERT";
  case 132:
   return "SELECT";
  case 129:
   return "UPDATE";
  case 136:
   return "DELETE";
  case 130:
   return "TRUNCATE";
  case 133:
   return "REFERENCES";
  case 131:
   return "TRIGGER";
  case 135:
   return "EXECUTE";
  case 128:
   return "USAGE";
  case 138:
   return "CREATE";
  case 137:
   return "TEMPORARY";
  case 139:
   return "CONNECT";
  default:
   elog(ERROR, "unrecognized aclright: %d", aclright);
   return ((void*)0);
 }

}
