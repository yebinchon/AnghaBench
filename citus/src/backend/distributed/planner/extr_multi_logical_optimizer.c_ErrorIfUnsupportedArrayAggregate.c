
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ aggdistinct; scalar_t__ aggorder; } ;
typedef TYPE_1__ Aggref ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
ErrorIfUnsupportedArrayAggregate(Aggref *arrayAggregateExpression)
{

 if (arrayAggregateExpression->aggorder)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("array_agg with order by is unsupported")));
 }


 if (arrayAggregateExpression->aggdistinct)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("array_agg (distinct) is unsupported")));
 }
}
