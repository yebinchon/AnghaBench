
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int t ;
struct TYPE_4__ {int ServerName; int Path; } ;
typedef TYPE_1__ LOG_FILE ;
typedef int LIST ;


 int * Search (int *,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_1__*,int) ;

bool CheckLogFileNameFromEnumList(LIST *o, char *name, char *server_name)
{
 LOG_FILE t;

 if (o == ((void*)0) || name == ((void*)0) || server_name == ((void*)0))
 {
  return 0;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.Path, sizeof(t.Path), name);
 StrCpy(t.ServerName, sizeof(t.ServerName), server_name);

 if (Search(o, &t) == ((void*)0))
 {
  return 0;
 }

 return 1;
}
