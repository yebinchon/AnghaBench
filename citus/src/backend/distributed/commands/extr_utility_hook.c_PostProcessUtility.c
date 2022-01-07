
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int IndexStmt ;
 scalar_t__ IsA (int *,int ) ;
 int PostProcessIndexStmt (int ) ;
 int castNode (int ,int *) ;

__attribute__((used)) static void
PostProcessUtility(Node *parsetree)
{
 if (IsA(parsetree, IndexStmt))
 {
  PostProcessIndexStmt(castNode(IndexStmt, parsetree));
 }
}
