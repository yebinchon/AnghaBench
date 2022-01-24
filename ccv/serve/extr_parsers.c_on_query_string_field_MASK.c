#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int header_index; int /*<<< orphan*/  name; scalar_t__ cursor; } ;
typedef  TYPE_1__ param_parser_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(void* context, const char* buf, size_t len, int header_index)
{
	param_parser_t* parser = (param_parser_t*)context;
	if (parser->header_index != header_index)
	{
		parser->header_index = header_index;
		// if header index doesn't match, reset the name copy
		parser->cursor = 0;
		FUNC0(parser->name, 0, sizeof(parser->name));
		// terminate last query string
		FUNC2(parser);
	}
	FUNC1(context, buf, len);
}