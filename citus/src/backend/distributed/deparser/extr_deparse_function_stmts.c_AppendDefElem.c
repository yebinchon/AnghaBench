
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int defname; } ;
typedef int StringInfo ;
typedef TYPE_1__ DefElem ;


 int AppendDefElemCost (int ,TYPE_1__*) ;
 int AppendDefElemLeakproof (int ,TYPE_1__*) ;
 int AppendDefElemParallel (int ,TYPE_1__*) ;
 int AppendDefElemRows (int ,TYPE_1__*) ;
 int AppendDefElemSecurity (int ,TYPE_1__*) ;
 int AppendDefElemSet (int ,TYPE_1__*) ;
 int AppendDefElemStrict (int ,TYPE_1__*) ;
 int AppendDefElemVolatility (int ,TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
AppendDefElem(StringInfo buf, DefElem *def)
{
 if (strcmp(def->defname, "strict") == 0)
 {
  AppendDefElemStrict(buf, def);
 }
 else if (strcmp(def->defname, "volatility") == 0)
 {
  AppendDefElemVolatility(buf, def);
 }
 else if (strcmp(def->defname, "leakproof") == 0)
 {
  AppendDefElemLeakproof(buf, def);
 }
 else if (strcmp(def->defname, "security") == 0)
 {
  AppendDefElemSecurity(buf, def);
 }
 else if (strcmp(def->defname, "parallel") == 0)
 {
  AppendDefElemParallel(buf, def);
 }
 else if (strcmp(def->defname, "cost") == 0)
 {
  AppendDefElemCost(buf, def);
 }
 else if (strcmp(def->defname, "rows") == 0)
 {
  AppendDefElemRows(buf, def);
 }
 else if (strcmp(def->defname, "set") == 0)
 {
  AppendDefElemSet(buf, def);
 }
}
