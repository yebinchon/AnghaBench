#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int header_index; scalar_t__ state; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ param_parser_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ s_param_start ; 

__attribute__((used)) static void FUNC3(void* context, const char* buf, size_t len, int header_index)
{
	param_parser_t* parser = (param_parser_t*)context;
	if (parser->header_index == header_index)
	{
		if (parser->state == s_param_start)
		{
			parser->state = FUNC0(parser, parser->name);
			if (parser->state >= 0)
				FUNC2(parser);
		}
		if (parser->state >= 0)
			FUNC1(parser, buf, len);
	}
}