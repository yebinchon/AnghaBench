
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ const ObjectAddress ;


 int ERROR ;
 scalar_t__ IsObjectAddressOwnedByExtension (TYPE_1__ const*,TYPE_1__ const*) ;
 int ereport (int ,int ) ;
 int errdetail (char*,char*,char*) ;
 int errmsg (char*) ;
 char* getObjectIdentity (TYPE_1__ const*) ;

__attribute__((used)) static void
ErrorIfFunctionDependsOnExtension(const ObjectAddress *functionAddress)
{

 ObjectAddress extensionAddress = { 0 };

 if (IsObjectAddressOwnedByExtension(functionAddress, &extensionAddress))
 {
  char *functionName = getObjectIdentity(functionAddress);
  char *extensionName = getObjectIdentity(&extensionAddress);
  ereport(ERROR, (errmsg("unable to create a distributed function from functions "
          "owned by an extension"),
      errdetail("Function \"%s\" has a dependency on extension \"%s\". "
          "Functions depending on an extension cannot be "
          "distributed. Create the function by creating the "
          "extension on the workers.", functionName,
          extensionName)));
 }
}
