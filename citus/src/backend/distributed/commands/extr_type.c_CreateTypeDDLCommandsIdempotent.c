
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ classId; int objectId; } ;
struct TYPE_8__ {void* data; int member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ ObjectAddress ;
typedef int Node ;
typedef int List ;


 int ALTER_TYPE_OWNER_COMMAND ;
 int Assert (int) ;
 int * CreateTypeStmtByObjectAddress (TYPE_2__ const*) ;
 char* DeparseTreeNode (int *) ;
 int GetTypeOwner (int ) ;
 char* GetUserNameFromId (int ,int) ;
 int * NIL ;
 scalar_t__ TypeRelationId ;
 char* WrapCreateOrReplace (char const*) ;
 int appendStringInfo (TYPE_1__*,int ,int ,int ) ;
 int getObjectIdentity (TYPE_2__ const*) ;
 int initStringInfo (TYPE_1__*) ;
 int * lappend (int *,void*) ;
 int quote_identifier (char const*) ;
 scalar_t__ type_is_array (int ) ;

List *
CreateTypeDDLCommandsIdempotent(const ObjectAddress *typeAddress)
{
 List *ddlCommands = NIL;
 const char *ddlCommand = ((void*)0);
 Node *stmt = ((void*)0);
 StringInfoData buf = { 0 };
 const char *username = ((void*)0);

 Assert(typeAddress->classId == TypeRelationId);

 if (type_is_array(typeAddress->objectId))
 {






  return NIL;
 }

 stmt = CreateTypeStmtByObjectAddress(typeAddress);


 ddlCommand = DeparseTreeNode(stmt);
 ddlCommand = WrapCreateOrReplace(ddlCommand);
 ddlCommands = lappend(ddlCommands, (void *) ddlCommand);


 username = GetUserNameFromId(GetTypeOwner(typeAddress->objectId), 0);
 initStringInfo(&buf);
 appendStringInfo(&buf, ALTER_TYPE_OWNER_COMMAND, getObjectIdentity(typeAddress),
      quote_identifier(username));
 ddlCommands = lappend(ddlCommands, buf.data);

 return ddlCommands;
}
