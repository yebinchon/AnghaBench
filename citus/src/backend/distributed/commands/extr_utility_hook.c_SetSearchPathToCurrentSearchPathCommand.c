
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 char* CurrentSearchPath () ;
 int appendStringInfo (TYPE_1__*,char*,char*) ;
 TYPE_1__* makeStringInfo () ;

__attribute__((used)) static char *
SetSearchPathToCurrentSearchPathCommand(void)
{
 StringInfo setCommand = ((void*)0);
 char *currentSearchPath = CurrentSearchPath();

 if (currentSearchPath == ((void*)0))
 {
  return ((void*)0);
 }

 setCommand = makeStringInfo();
 appendStringInfo(setCommand, "SET search_path TO %s;", currentSearchPath);

 return setCommand->data;
}
