
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int userName; TYPE_1__* connection; } ;
struct TYPE_4__ {scalar_t__ claimedExclusively; } ;
typedef TYPE_1__ MultiConnection ;
typedef TYPE_2__ ConnectionReference ;


 int FORCE_NEW_CONNECTION ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool
CanUseExistingConnection(uint32 flags, const char *userName,
       ConnectionReference *connectionReference)
{
 MultiConnection *connection = connectionReference->connection;

 if (!connection)
 {

  return 0;
 }
 else if (connection->claimedExclusively)
 {

  return 0;
 }
 else if (flags & FORCE_NEW_CONNECTION)
 {

  return 0;
 }
 else if (strcmp(connectionReference->userName, userName) != 0)
 {

  return 0;
 }
 else
 {
  return 1;
 }
}
