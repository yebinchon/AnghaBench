
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arg; } ;
typedef int StringInfo ;
typedef TYPE_1__ DefElem ;


 int appendStringInfo (int ,char*) ;
 scalar_t__ intVal (int ) ;

__attribute__((used)) static void
AppendDefElemLeakproof(StringInfo buf, DefElem *def)
{
 if (intVal(def->arg) == 0)
 {
  appendStringInfo(buf, " NOT");
 }
 appendStringInfo(buf, " LEAKPROOF");
}
