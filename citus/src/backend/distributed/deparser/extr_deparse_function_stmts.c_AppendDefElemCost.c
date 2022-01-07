
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int DefElem ;


 int appendStringInfo (int ,char*,int ) ;
 int defGetNumeric (int *) ;

__attribute__((used)) static void
AppendDefElemCost(StringInfo buf, DefElem *def)
{
 appendStringInfo(buf, " COST %lf", defGetNumeric(def));
}
