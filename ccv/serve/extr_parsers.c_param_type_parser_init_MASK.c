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
struct TYPE_5__ {size_t state; int /*<<< orphan*/  blob_parser; int /*<<< orphan*/  string_parser; int /*<<< orphan*/  coord_parser; int /*<<< orphan*/  bool_parser; int /*<<< orphan*/  numeric_parser; TYPE_1__* param_map; } ;
typedef  TYPE_2__ param_parser_t ;
struct TYPE_4__ {int type; } ;

/* Variables and functions */
#define  PARAM_TYPE_BLOB 137 
#define  PARAM_TYPE_BODY 136 
#define  PARAM_TYPE_BOOL 135 
#define  PARAM_TYPE_DOUBLE 134 
#define  PARAM_TYPE_FLOAT 133 
#define  PARAM_TYPE_ID 132 
#define  PARAM_TYPE_INT 131 
#define  PARAM_TYPE_POINT 130 
#define  PARAM_TYPE_SIZE 129 
#define  PARAM_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(param_parser_t* parser)
{
	FUNC0(parser->state >= 0);
	switch (parser->param_map[parser->state].type)
	{
		case PARAM_TYPE_INT:
		case PARAM_TYPE_ID:
		case PARAM_TYPE_FLOAT:
		case PARAM_TYPE_DOUBLE:
			FUNC4(&parser->numeric_parser);
			break;
		case PARAM_TYPE_BOOL:
			FUNC2(&parser->bool_parser);
			break;
		case PARAM_TYPE_SIZE:
		case PARAM_TYPE_POINT:
			FUNC3(&parser->coord_parser);
			break;
		case PARAM_TYPE_STRING:
			FUNC5(&parser->string_parser);
			break;
		case PARAM_TYPE_BLOB:
		case PARAM_TYPE_BODY:
			FUNC1(&parser->blob_parser);
			break;
	}
}