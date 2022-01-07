
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ObjectType ;


 int Assert (int) ;
 scalar_t__ OBJECT_AGGREGATE ;
 scalar_t__ OBJECT_FUNCTION ;
 scalar_t__ OBJECT_PROCEDURE ;

void
AssertObjectTypeIsFunctional(ObjectType type)
{
 Assert(type == OBJECT_AGGREGATE ||
     type == OBJECT_FUNCTION ||
     type == OBJECT_PROCEDURE);
}
