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
struct TYPE_4__ {int /*<<< orphan*/  memorySuite; int /*<<< orphan*/  grammarianData; } ;
typedef  int /*<<< orphan*/  Symbol ;
typedef  TYPE_1__* JSON_Writer ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  int /*<<< orphan*/  GrammarianOutput ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JSON_Error_OutOfMemory ; 
 int /*<<< orphan*/  JSON_Error_UnexpectedToken ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  JSON_Success ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  REJECTED_TOKEN 129 
#define  SYMBOL_STACK_FULL 128 

__attribute__((used)) static JSON_Status FUNC3(JSON_Writer writer, Symbol token)
{
   GrammarianOutput output = FUNC1(&writer->grammarianData, token, &writer->memorySuite);
   switch (FUNC0(output))
   {
      case REJECTED_TOKEN:
         FUNC2(writer, JSON_Error_UnexpectedToken);
         return JSON_Failure;

      case SYMBOL_STACK_FULL:
         FUNC2(writer, JSON_Error_OutOfMemory);
         return JSON_Failure;
   }
   return JSON_Success;
}