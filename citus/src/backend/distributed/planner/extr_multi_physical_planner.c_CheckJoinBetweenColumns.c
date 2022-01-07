
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * args; } ;
typedef TYPE_1__ OpExpr ;
typedef scalar_t__ NodeTag ;
typedef int Node ;
typedef int List ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ T_Var ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 scalar_t__ linitial (int *) ;
 scalar_t__ lsecond (int *) ;
 scalar_t__ nodeTag (int *) ;
 int * strip_implicit_coercions (int *) ;

__attribute__((used)) static void
CheckJoinBetweenColumns(OpExpr *joinClause)
{
 List *argumentList = joinClause->args;
 Node *leftArgument = (Node *) linitial(argumentList);
 Node *rightArgument = (Node *) lsecond(argumentList);
 Node *strippedLeftArgument = strip_implicit_coercions(leftArgument);
 Node *strippedRightArgument = strip_implicit_coercions(rightArgument);

 NodeTag leftArgumentType = nodeTag(strippedLeftArgument);
 NodeTag rightArgumentType = nodeTag(strippedRightArgument);

 if (leftArgumentType != T_Var || rightArgumentType != T_Var)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot perform local joins that involve expressions"),
      errdetail("local joins can be performed between columns only")));
 }
}
