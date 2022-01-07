
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ yyidx; int yystack; } ;
typedef TYPE_1__ yyParser ;


 int free (int ) ;
 void stub1 (void*) ;
 int yy_pop_parser_stack (TYPE_1__*) ;

void ParseFree(
  void *p,
  void (*freeProc)(void*)
){
  yyParser *pParser = (yyParser*)p;

  if( pParser==0 ) return;

  while( pParser->yyidx>=0 ) yy_pop_parser_stack(pParser);

  free(pParser->yystack);

  (*freeProc)((void*)pParser);
}
