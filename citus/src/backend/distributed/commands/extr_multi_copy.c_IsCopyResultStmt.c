
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CopyStmt ;


 int CopyStatementHasFormat (int *,char*) ;

bool
IsCopyResultStmt(CopyStmt *copyStatement)
{
 return CopyStatementHasFormat(copyStatement, "result");
}
