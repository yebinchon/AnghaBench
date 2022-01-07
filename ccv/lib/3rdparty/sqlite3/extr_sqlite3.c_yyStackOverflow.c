
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ yytos; scalar_t__ yystack; } ;
typedef TYPE_1__ yyParser ;


 int fprintf (scalar_t__,char*,char*) ;
 int pParse ;
 int sqlite3ErrorMsg (int ,char*) ;
 int sqlite3ParserARG_FETCH ;
 int sqlite3ParserARG_STORE ;
 scalar_t__ yyTraceFILE ;
 char* yyTracePrompt ;
 int yy_pop_parser_stack (TYPE_1__*) ;

__attribute__((used)) static void yyStackOverflow(yyParser *yypParser){
   sqlite3ParserARG_FETCH;

   if( yyTraceFILE ){
     fprintf(yyTraceFILE,"%sStack Overflow!\n",yyTracePrompt);
   }

   while( yypParser->yytos>yypParser->yystack ) yy_pop_parser_stack(yypParser);




  sqlite3ErrorMsg(pParse, "parser stack overflow");

   sqlite3ParserARG_STORE;
}
