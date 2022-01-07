
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attcollation; int atttypid; int attname; } ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int ColumnDef ;


 int NameStr (int ) ;
 int * makeColumnDef (int ,int ,int,int ) ;

__attribute__((used)) static ColumnDef *
attributeFormToColumnDef(Form_pg_attribute attributeForm)
{
 return makeColumnDef(NameStr(attributeForm->attname),
       attributeForm->atttypid,
       -1,
       attributeForm->attcollation);
}
