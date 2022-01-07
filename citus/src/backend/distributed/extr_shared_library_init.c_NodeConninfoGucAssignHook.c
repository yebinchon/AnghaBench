
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* val; int * keyword; } ;
typedef TYPE_1__ PQconninfoOption ;


 int AddConnParam (int *,char*) ;
 int FATAL ;
 int PQconninfoFree (TYPE_1__*) ;
 TYPE_1__* PQconninfoParse (char const*,int *) ;
 int ResetConnParams () ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static void
NodeConninfoGucAssignHook(const char *newval, void *extra)
{
 PQconninfoOption *optionArray = ((void*)0);
 PQconninfoOption *option = ((void*)0);

 if (newval == ((void*)0))
 {
  newval = "";
 }

 optionArray = PQconninfoParse(newval, ((void*)0));
 if (optionArray == ((void*)0))
 {
  ereport(FATAL, (errmsg("cannot parse node_conninfo value"),
      errdetail("The GUC check hook should prevent "
          "all malformed values.")));
 }

 ResetConnParams();

 for (option = optionArray; option->keyword != ((void*)0); option++)
 {
  if (option->val == ((void*)0) || option->val[0] == '\0')
  {
   continue;
  }

  AddConnParam(option->keyword, option->val);
 }

 PQconninfoFree(optionArray);
}
