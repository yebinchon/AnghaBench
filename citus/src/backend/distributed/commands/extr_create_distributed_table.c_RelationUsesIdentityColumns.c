
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {char attidentity; } ;
struct TYPE_6__ {int natts; } ;
typedef TYPE_2__* Form_pg_attribute ;


 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;

__attribute__((used)) static bool
RelationUsesIdentityColumns(TupleDesc relationDesc)
{
 int attributeIndex = 0;

 for (attributeIndex = 0; attributeIndex < relationDesc->natts; attributeIndex++)
 {
  Form_pg_attribute attributeForm = TupleDescAttr(relationDesc, attributeIndex);

  if (attributeForm->attidentity != '\0')
  {
   return 1;
  }
 }

 return 0;
}
