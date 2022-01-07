
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rels; } ;
typedef TYPE_1__ VacuumStmt ;
struct TYPE_5__ {int * va_cols; } ;
typedef TYPE_2__ VacuumRelation ;
typedef int List ;


 scalar_t__ list_nth (int ,int) ;

__attribute__((used)) static List *
VacuumColumnList(VacuumStmt *vacuumStmt, int relationIndex)
{
 VacuumRelation *vacuumRelation = (VacuumRelation *) list_nth(vacuumStmt->rels,
                 relationIndex);

 return vacuumRelation->va_cols;
}
