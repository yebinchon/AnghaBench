
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int objectId; } ;
typedef TYPE_1__ ObjectAddress ;
typedef int List ;


 int Assert (int) ;
 int * CreateFunctionDDLCommandsIdempotent (TYPE_1__ const*) ;
 char* CreateSchemaDDLCommand (int ) ;
 int * CreateTypeDDLCommandsIdempotent (TYPE_1__ const*) ;
 int ERROR ;
 int * NIL ;




 int RELKIND_COMPOSITE_TYPE ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int getObjectClass (TYPE_1__ const*) ;
 int getObjectTypeDescription (TYPE_1__ const*) ;
 int get_rel_relkind (int ) ;
 int * list_make1 (void*) ;

__attribute__((used)) static List *
GetDependencyCreateDDLCommands(const ObjectAddress *dependency)
{
 switch (getObjectClass(dependency))
 {
  case 131:
  {




   if (get_rel_relkind(dependency->objectId) == RELKIND_COMPOSITE_TYPE)
   {
    return NIL;
   }


   break;
  }

  case 130:
  {
   return CreateFunctionDDLCommandsIdempotent(dependency);
  }

  case 129:
  {
   const char *schemaDDLCommand = CreateSchemaDDLCommand(dependency->objectId);

   if (schemaDDLCommand == ((void*)0))
   {

    return NIL;
   }

   return list_make1((void *) schemaDDLCommand);
  }

  case 128:
  {
   return CreateTypeDDLCommandsIdempotent(dependency);
  }

  default:
  {
   break;
  }
 }





 Assert(0);
 ereport(ERROR, (errmsg("unsupported object %s for distribution by citus",
         getObjectTypeDescription(dependency)),
     errdetail(
      "citus tries to recreate an unsupported object on its workers"),
     errhint("please report a bug as this should not be happening")));
}
