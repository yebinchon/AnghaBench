
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_3__ {scalar_t__ iOffset; } ;
typedef TYPE_1__ Select ;


 int OP_AddImm ;
 int OP_Goto ;
 int OP_IfNeg ;
 int VdbeComment (int *) ;
 int sqlite3VdbeAddOp1 (int *,int ,scalar_t__) ;
 int sqlite3VdbeAddOp2 (int *,int ,scalar_t__,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;

__attribute__((used)) static void codeOffset(
  Vdbe *v,
  Select *p,
  int iContinue
){
  if( p->iOffset && iContinue!=0 ){
    int addr;
    sqlite3VdbeAddOp2(v, OP_AddImm, p->iOffset, -1);
    addr = sqlite3VdbeAddOp1(v, OP_IfNeg, p->iOffset);
    sqlite3VdbeAddOp2(v, OP_Goto, 0, iContinue);
    VdbeComment((v, "skip OFFSET records"));
    sqlite3VdbeJumpHere(v, addr);
  }
}
