#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ yytos; scalar_t__ yystack; } ;
typedef  TYPE_1__ yyParser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  pParse ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sqlite3ParserARG_FETCH ; 
 int /*<<< orphan*/  sqlite3ParserARG_STORE ; 
 scalar_t__ yyTraceFILE ; 
 char* yyTracePrompt ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(yyParser *yypParser){
   sqlite3ParserARG_FETCH;
#ifndef NDEBUG
   if( yyTraceFILE ){
     FUNC0(yyTraceFILE,"%sStack Overflow!\n",yyTracePrompt);
   }
#endif
   while( yypParser->yytos>yypParser->yystack ) FUNC2(yypParser);
   /* Here code is inserted which will execute if the parser
   ** stack every overflows */
/******** Begin %stack_overflow code ******************************************/

  FUNC1(pParse, "parser stack overflow");
/******** End %stack_overflow code ********************************************/
   sqlite3ParserARG_STORE; /* Suppress warning about unused %extra_argument var */
}