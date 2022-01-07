
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int options; } ;
typedef TYPE_1__ VacuumStmt ;
struct TYPE_6__ {int options; } ;
typedef TYPE_2__ CitusVacuumParams ;



__attribute__((used)) static CitusVacuumParams
VacuumStmtParams(VacuumStmt *vacuumStmt)
{
 CitusVacuumParams params;
 params.options = vacuumStmt->options;
 return params;
}
