
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectId; } ;
typedef TYPE_1__ ObjectAddress ;


 int Assert (int) ;
 int EnableDependencyCreation ;




 int RELKIND_COMPOSITE_TYPE ;



 int getObjectClass (TYPE_1__ const*) ;
 int get_rel_relkind (int ) ;
 int get_typtype (int ) ;
 int type_is_array (int ) ;

bool
SupportedDependencyByCitus(const ObjectAddress *address)
{
 if (!EnableDependencyCreation)
 {




  switch (getObjectClass(address))
  {
   case 132:
   {
    return 1;
   }

   default:
   {
    return 0;
   }
  }


  Assert(0);
 }





 switch (getObjectClass(address))
 {
  case 132:
  {
   return 1;
  }

  case 133:
  {
   return 1;
  }

  case 131:
  {
   switch (get_typtype(address->objectId))
   {
    case 128:
    case 129:
    {
     return 1;
    }

    case 130:
    {




     return type_is_array(address->objectId);
    }

    default:
    {

     return 0;
    }
   }




   break;
  }

  case 134:
  {




   if (get_rel_relkind(address->objectId) == RELKIND_COMPOSITE_TYPE)
   {
    return 1;
   }

   return 0;
  }

  default:
  {

   return 0;
  }
 }
}
