
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CitusExtensionOwner () ;
 char* GetUserNameFromId (int ,int) ;

char *
CitusExtensionOwnerName(void)
{
 Oid superUserId = CitusExtensionOwner();

 return GetUserNameFromId(superUserId, 0);
}
