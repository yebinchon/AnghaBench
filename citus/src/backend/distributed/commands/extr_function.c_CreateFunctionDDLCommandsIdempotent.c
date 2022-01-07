
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ classId; int objectId; } ;
typedef TYPE_1__ ObjectAddress ;
typedef int List ;


 int Assert (int) ;
 char* GetFunctionAlterOwnerCommand (int ) ;
 char* GetFunctionDDLCommand (int ,int) ;
 scalar_t__ ProcedureRelationId ;
 int * list_make2 (char*,char*) ;

List *
CreateFunctionDDLCommandsIdempotent(const ObjectAddress *functionAddress)
{
 char *ddlCommand = ((void*)0);
 char *alterFunctionOwnerSQL = ((void*)0);

 Assert(functionAddress->classId == ProcedureRelationId);

 ddlCommand = GetFunctionDDLCommand(functionAddress->objectId, 1);
 alterFunctionOwnerSQL = GetFunctionAlterOwnerCommand(functionAddress->objectId);

 return list_make2(ddlCommand, alterFunctionOwnerSQL);
}
