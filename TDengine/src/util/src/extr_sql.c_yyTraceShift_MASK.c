#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t yyidx; TYPE_1__* yystack; } ;
typedef  TYPE_2__ yyParser ;
struct TYPE_4__ {size_t major; } ;

/* Variables and functions */
 int YYNSTATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,char*,char*,...) ; 
 char** yyTokenName ; 
 scalar_t__ yyTraceFILE ; 
 char* yyTracePrompt ; 

__attribute__((used)) static void FUNC1(yyParser *yypParser, int yyNewState){
  if( yyTraceFILE ){
    if( yyNewState<YYNSTATE ){
      FUNC0(yyTraceFILE,"%sShift '%s', go to state %d\n",
         yyTracePrompt,yyTokenName[yypParser->yystack[yypParser->yyidx].major],
         yyNewState);
    }else{
      FUNC0(yyTraceFILE,"%sShift '%s'\n",
         yyTracePrompt,yyTokenName[yypParser->yystack[yypParser->yyidx].major]);
    }
  }
}