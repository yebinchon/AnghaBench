
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pstrdup (char const*) ;

void
SetSchemaNameIfNotExist(char **schemaName, const char *newSchemaName)
{
 if ((*schemaName) == ((void*)0))
 {
  *schemaName = pstrdup(newSchemaName);
 }
}
