
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int i64 ;
typedef int Vdbe ;


 int OP_Int64 ;
 int OP_ResultRow ;
 int P4_INT64 ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp4Dup8 (int *,int ,int ,int,int ,int const*,int ) ;

__attribute__((used)) static void returnSingleInt(Vdbe *v, i64 value){
  sqlite3VdbeAddOp4Dup8(v, OP_Int64, 0, 1, 0, (const u8*)&value, P4_INT64);
  sqlite3VdbeAddOp2(v, OP_ResultRow, 1, 1);
}
