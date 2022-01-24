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
struct TYPE_4__ {int /*<<< orphan*/  depth; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  TYPE_1__* JSON_Parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  JSON_Success ; 
 int /*<<< orphan*/  PARSER_TRACK_OBJECT_MEMBERS ; 

__attribute__((used)) static JSON_Status FUNC2(JSON_Parser parser, int isObject)
{
   if (isObject && FUNC0(parser->flags, PARSER_TRACK_OBJECT_MEMBERS) &&
         !FUNC1(parser))
   {
      return JSON_Failure;
   }
   parser->depth++;
   return JSON_Success;
}