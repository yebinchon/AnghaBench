
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ varattno; } ;
typedef TYPE_1__ Var ;
typedef int TupleDesc ;
struct TYPE_6__ {scalar_t__ attgenerated; } ;
typedef TYPE_2__* Form_pg_attribute ;


 scalar_t__ ATTRIBUTE_GENERATED_STORED ;
 TYPE_2__* TupleDescAttr (int ,scalar_t__) ;

__attribute__((used)) static bool
DistributionColumnUsesGeneratedStoredColumn(TupleDesc relationDesc,
           Var *distributionColumn)
{
 return 0;
}
