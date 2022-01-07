
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ aggdistinct; scalar_t__ aggorder; } ;
typedef size_t AggregateType ;
typedef TYPE_1__ Aggref ;


 char** AggregateNames ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

__attribute__((used)) static void
ErrorIfUnsupportedJsonAggregate(AggregateType type,
        Aggref *aggregateExpression)
{

 if (aggregateExpression->aggorder)
 {
  const char *name = AggregateNames[type];
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("%s with order by is unsupported", name)));
 }


 if (aggregateExpression->aggdistinct)
 {
  const char *name = AggregateNames[type];
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("%s (distinct) is unsupported", name)));
 }
}
