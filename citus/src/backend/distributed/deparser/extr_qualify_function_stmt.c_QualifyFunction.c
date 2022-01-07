
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objname; } ;
typedef TYPE_1__ ObjectWithArgs ;
typedef int ObjectType ;


 int DeconstructQualifiedName (int ,char**,char**) ;
 int QualifyFunctionSchemaName (TYPE_1__*,int ) ;

void
QualifyFunction(ObjectWithArgs *func, ObjectType type)
{
 char *functionName = ((void*)0);
 char *schemaName = ((void*)0);


 DeconstructQualifiedName(func->objname, &schemaName, &functionName);


 if (schemaName == ((void*)0))
 {
  QualifyFunctionSchemaName(func, type);
 }
}
