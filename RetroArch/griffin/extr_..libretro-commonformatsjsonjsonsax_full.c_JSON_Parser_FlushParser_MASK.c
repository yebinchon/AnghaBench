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
struct TYPE_4__ {int /*<<< orphan*/  grammarianData; } ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  TYPE_1__* JSON_Parser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JSON_Error_ExpectedMoreTokens ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_Success ; 

__attribute__((used)) static JSON_Status FUNC2(JSON_Parser parser)
{
   /* The symbol stack should be empty when parsing finishes. */
   if (!FUNC0(&parser->grammarianData))
   {
      FUNC1(parser, JSON_Error_ExpectedMoreTokens);
      return JSON_Failure;
   }
   return JSON_Success;
}