
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int roletype; char const* rolename; } ;
typedef TYPE_1__ RoleSpec ;


 int ERROR ;
 int GetSessionUserId () ;
 int GetUserId () ;
 char const* GetUserNameFromId (int ,int) ;




 int elog (int ,char*,int) ;
 char const* quote_identifier (char const*) ;

const char *
RoleSpecString(RoleSpec *spec, bool withQuoteIdendifier)
{
 switch (spec->roletype)
 {
  case 131:
  {
   return withQuoteIdendifier ?
       quote_identifier(spec->rolename) :
       spec->rolename;
  }

  case 130:
  {
   return withQuoteIdendifier ?
       quote_identifier(GetUserNameFromId(GetUserId(), 0)) :
       GetUserNameFromId(GetUserId(), 0);
  }

  case 128:
  {
   return withQuoteIdendifier ?
       quote_identifier(GetUserNameFromId(GetSessionUserId(), 0)) :
       GetUserNameFromId(GetSessionUserId(), 0);
  }

  case 129:
  {
   return "PUBLIC";
  }

  default:
  {
   elog(ERROR, "unexpected role type %d", spec->roletype);
  }
 }
}
