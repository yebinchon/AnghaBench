
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arg; } ;
typedef int StringInfo ;
typedef TYPE_1__ DefElem ;


 int CopyAndConvertToUpperCase (int ) ;
 int appendStringInfo (int ,char*,int ) ;
 int strVal (int ) ;

__attribute__((used)) static void
AppendDefElemParallel(StringInfo buf, DefElem *def)
{
 appendStringInfo(buf, " PARALLEL %s", CopyAndConvertToUpperCase(strVal(def->arg)));
}
