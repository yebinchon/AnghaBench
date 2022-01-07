
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int minor; scalar_t__ major; scalar_t__ stateno; } ;
typedef TYPE_1__ yyStackEntry ;
struct TYPE_8__ {scalar_t__ yyidx; scalar_t__ yyidxMax; scalar_t__ yystksz; TYPE_1__* yystack; } ;
typedef TYPE_2__ yyParser ;
typedef int YYMINORTYPE ;
typedef scalar_t__ YYCODETYPE ;
typedef scalar_t__ YYACTIONTYPE ;


 scalar_t__ YYSTACKDEPTH ;
 int yyGrowStack (TYPE_2__*) ;
 int yyStackOverflow (TYPE_2__*,int *) ;
 int yyTraceShift (TYPE_2__*,int) ;

__attribute__((used)) static void yy_shift(
  yyParser *yypParser,
  int yyNewState,
  int yyMajor,
  YYMINORTYPE *yypMinor
){
  yyStackEntry *yytos;
  yypParser->yyidx++;
  if( yypParser->yyidx>=yypParser->yystksz ){
    yyGrowStack(yypParser);
    if( yypParser->yyidx>=yypParser->yystksz ){
      yyStackOverflow(yypParser, yypMinor);
      return;
    }
  }

  yytos = &yypParser->yystack[yypParser->yyidx];
  yytos->stateno = (YYACTIONTYPE)yyNewState;
  yytos->major = (YYCODETYPE)yyMajor;
  yytos->minor = *yypMinor;
  yyTraceShift(yypParser, yyNewState);
}
