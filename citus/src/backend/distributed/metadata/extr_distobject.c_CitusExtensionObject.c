
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ classId; int objectId; } ;
typedef TYPE_1__ ObjectAddress ;


 int CITUS_NAME ;
 scalar_t__ ExtensionRelationId ;
 int NAMEDATALEN ;
 char* get_extension_name (int ) ;
 scalar_t__ strncasecmp (char*,int ,int ) ;

bool
CitusExtensionObject(const ObjectAddress *objectAddress)
{
 char *extensionName = 0;

 if (objectAddress->classId != ExtensionRelationId)
 {
  return 0;
 }

 extensionName = get_extension_name(objectAddress->objectId);
 if (extensionName != ((void*)0) &&
  strncasecmp(extensionName, CITUS_NAME, NAMEDATALEN) == 0)
 {
  return 1;
 }

 return 0;
}
