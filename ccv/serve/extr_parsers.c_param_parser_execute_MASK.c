#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uri_parse_state_t ;
struct TYPE_9__ {size_t body; size_t state; size_t resource; TYPE_1__* param_map; scalar_t__ parsed; int /*<<< orphan*/  name; int /*<<< orphan*/  form_data_parser; int /*<<< orphan*/  query_string_parser; } ;
typedef  TYPE_2__ param_parser_t ;
struct TYPE_8__ {scalar_t__ offset; } ;

/* Variables and functions */
#define  URI_CONTENT_BODY 133 
#define  URI_MULTIPART_DATA 132 
#define  URI_MULTIPART_HEADER_FIELD 131 
#define  URI_MULTIPART_HEADER_VALUE 130 
#define  URI_PARSE_TERMINATE 129 
#define  URI_QUERY_STRING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,size_t) ; 
 size_t s_param_skip ; 
 size_t s_param_start ; 

void FUNC7(param_parser_t* parser, int resource_id, const char* buf, size_t len, uri_parse_state_t state, int header_index)
{
	switch (state)
	{
		default:
			break;
		case URI_QUERY_STRING:
			FUNC6(&parser->query_string_parser, buf, len);
			break;
		case URI_CONTENT_BODY:
			if (parser->body == s_param_skip)
				break;
			if (parser->state != s_param_start && parser->state != parser->body)
				FUNC3(parser);
			if (parser->state == s_param_start)
			{
				parser->state = parser->body;
				FUNC5(parser);
			}
			FUNC4(parser, buf, len);
			break;
		case URI_PARSE_TERMINATE:
			if (parser->state != s_param_start)
				FUNC3(parser); // collect result
			break;
		case URI_MULTIPART_HEADER_FIELD:
		case URI_MULTIPART_HEADER_VALUE:
			if (parser->state != s_param_start)
				FUNC3(parser);
			FUNC0(header_index >= 0);
			FUNC2(&parser->form_data_parser, buf, len, header_index);
			break;
		case URI_MULTIPART_DATA:
			if (parser->state == s_param_start)
			{
				parser->state = FUNC1(parser, parser->name);
				if (parser->state >= 0)
					FUNC5(parser);
			}
			if (parser->state >= 0)
				FUNC4(parser, buf, len);
			break;
	}
	if (resource_id >= 0 && parser->resource != s_param_start)
		*(int*)(parser->parsed + parser->param_map[parser->resource].offset) = resource_id;
}