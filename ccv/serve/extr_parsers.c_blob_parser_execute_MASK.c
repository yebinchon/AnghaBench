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
struct TYPE_4__ {size_t len; unsigned char* data; size_t written; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef  TYPE_2__ blob_parser_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char const*,size_t) ; 
 scalar_t__ FUNC2 (unsigned char*,size_t) ; 

void FUNC3(blob_parser_t* parser, const char* buf, size_t len)
{
	if (parser->data.len == 0)
	{
		parser->data.len = (len * 3 + 1) / 2;
		parser->data.data = (unsigned char*)FUNC0(parser->data.len);
	} else if (parser->data.written + len > parser->data.len) {
		parser->data.len = ((parser->data.len + len) * 3 + 1) / 2;
		parser->data.data = (unsigned char*)FUNC2(parser->data.data, parser->data.len);
	}
	FUNC1(parser->data.data + parser->data.written, buf, len);
	parser->data.written += len;
}