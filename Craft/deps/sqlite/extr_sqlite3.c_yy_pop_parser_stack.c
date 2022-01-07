
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t major; int minor; } ;
typedef TYPE_1__ yyStackEntry ;
struct TYPE_6__ {size_t yyidx; TYPE_1__* yystack; } ;
typedef TYPE_2__ yyParser ;
typedef int YYCODETYPE ;


 scalar_t__ NEVER (int) ;
 int fprintf (scalar_t__,char*,char*,char*) ;
 char** yyTokenName ;
 scalar_t__ yyTraceFILE ;
 char* yyTracePrompt ;
 int yy_destructor (TYPE_2__*,int,int *) ;

__attribute__((used)) static int yy_pop_parser_stack(yyParser *pParser){
  YYCODETYPE yymajor;
  yyStackEntry *yytos = &pParser->yystack[pParser->yyidx];



  if( NEVER(pParser->yyidx<0) ) return 0;

  if( yyTraceFILE && pParser->yyidx>=0 ){
    fprintf(yyTraceFILE,"%sPopping %s\n",
      yyTracePrompt,
      yyTokenName[yytos->major]);
  }

  yymajor = yytos->major;
  yy_destructor(pParser, yymajor, &yytos->minor);
  pParser->yyidx--;
  return yymajor;
}
