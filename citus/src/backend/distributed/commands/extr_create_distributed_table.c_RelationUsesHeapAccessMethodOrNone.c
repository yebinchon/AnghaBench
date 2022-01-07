
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rd_amhandler; TYPE_1__* rd_rel; } ;
struct TYPE_4__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;


 scalar_t__ HEAP_TABLE_AM_HANDLER_OID ;
 scalar_t__ RELKIND_RELATION ;

__attribute__((used)) static bool
RelationUsesHeapAccessMethodOrNone(Relation relation)
{





 return 1;

}
