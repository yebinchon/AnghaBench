#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t major; int /*<<< orphan*/  minor; } ;
typedef  TYPE_1__ yyStackEntry ;
struct TYPE_6__ {scalar_t__ yyidx; TYPE_1__* yystack; } ;
typedef  TYPE_2__ yyParser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*,char*) ; 
 char** yyTokenName ; 
 scalar_t__ yyTraceFILE ; 
 char* yyTracePrompt ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(yyParser *pParser){
  yyStackEntry *yytos;
  FUNC0( pParser->yyidx>=0 );
  yytos = &pParser->yystack[pParser->yyidx--];
#ifndef NDEBUG
  if( yyTraceFILE ){
    FUNC1(yyTraceFILE,"%sPopping %s\n",
      yyTracePrompt,
      yyTokenName[yytos->major]);
  }
#endif
  FUNC2(pParser, yytos->major, &yytos->minor);
}