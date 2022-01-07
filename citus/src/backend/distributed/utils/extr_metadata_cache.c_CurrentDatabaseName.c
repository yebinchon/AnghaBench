
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int databaseNameValid; char* databaseName; } ;


 TYPE_1__ MetadataCache ;
 int MyDatabaseId ;
 int NAMEDATALEN ;
 char* get_database_name (int ) ;
 int strlcpy (char*,char*,int ) ;

char *
CurrentDatabaseName(void)
{
 if (!MetadataCache.databaseNameValid)
 {
  char *databaseName = get_database_name(MyDatabaseId);
  if (databaseName == ((void*)0))
  {
   return ((void*)0);
  }

  strlcpy(MetadataCache.databaseName, databaseName, NAMEDATALEN);
  MetadataCache.databaseNameValid = 1;
 }

 return MetadataCache.databaseName;
}
