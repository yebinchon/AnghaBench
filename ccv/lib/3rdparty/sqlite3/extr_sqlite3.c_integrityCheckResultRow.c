
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;


 int OP_Halt ;
 int OP_IfPos ;
 int OP_ResultRow ;
 int VdbeCoverage (int *) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,scalar_t__,int) ;
 scalar_t__ sqlite3VdbeCurrentAddr (int *) ;

__attribute__((used)) static int integrityCheckResultRow(Vdbe *v){
  int addr;
  sqlite3VdbeAddOp2(v, OP_ResultRow, 3, 1);
  addr = sqlite3VdbeAddOp3(v, OP_IfPos, 1, sqlite3VdbeCurrentAddr(v)+2, 1);
  VdbeCoverage(v);
  sqlite3VdbeAddOp0(v, OP_Halt);
  return addr;
}
