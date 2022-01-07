
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int classid; int refclassid; void* deptype; int refobjsubid; int refobjid; int objsubid; int objid; } ;
struct TYPE_6__ {int classId; int objectId; int objectSubId; } ;
typedef int ObjectAddressCollector ;
typedef TYPE_1__ ObjectAddress ;
typedef int List ;
typedef TYPE_2__* Form_pg_depend ;
typedef int FormData_pg_depend ;


 void* DEPENDENCY_NORMAL ;
 int * NIL ;
 int RelationRelationId ;
 int TYPTYPE_COMPOSITE ;

 int get_element_type (int ) ;
 int get_typ_typrelid (int ) ;
 int get_typtype (int ) ;
 int * lappend (int *,TYPE_2__*) ;
 TYPE_2__* palloc0 (int) ;
 int type_is_array (int ) ;

__attribute__((used)) static List *
ExpandCitusSupportedTypes(ObjectAddressCollector *collector, const ObjectAddress *target)
{
 List *result = NIL;

 switch (target->classId)
 {
  case 128:
  {





   if (get_typtype(target->objectId) == TYPTYPE_COMPOSITE)
   {
    Form_pg_depend dependency = palloc0(sizeof(FormData_pg_depend));
    dependency->classid = target->classId;
    dependency->objid = target->objectId;
    dependency->objsubid = target->objectSubId;


    dependency->refclassid = RelationRelationId;
    dependency->refobjid = get_typ_typrelid(target->objectId);
    dependency->refobjsubid = 0;

    dependency->deptype = DEPENDENCY_NORMAL;

    result = lappend(result, dependency);
   }







   if (type_is_array(target->objectId))
   {
    Form_pg_depend dependency = palloc0(sizeof(FormData_pg_depend));
    dependency->classid = target->classId;
    dependency->objid = target->objectId;
    dependency->objsubid = target->objectSubId;


    dependency->refclassid = 128;
    dependency->refobjid = get_element_type(target->objectId);
    dependency->refobjsubid = 0;

    dependency->deptype = DEPENDENCY_NORMAL;

    result = lappend(result, dependency);
   }

   break;
  }

  default:
  {

   break;
  }
 }
 return result;
}
