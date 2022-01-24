#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int len; int written; char* data; int /*<<< orphan*/  on_release; } ;
typedef  TYPE_3__ ebb_buf ;
struct TYPE_15__ {TYPE_4__* data; int /*<<< orphan*/  written; } ;
struct TYPE_18__ {scalar_t__ top; TYPE_2__* convnet_and_words; TYPE_1__ source; int /*<<< orphan*/  param_parser; } ;
typedef  TYPE_4__ convnet_param_parser_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_19__ {int /*<<< orphan*/  input; } ;
typedef  TYPE_5__ ccv_convnet_t ;
struct TYPE_20__ {int id; double confidence; } ;
typedef  TYPE_6__ ccv_classification_t ;
struct TYPE_21__ {scalar_t__ rnum; } ;
typedef  TYPE_7__ ccv_array_t ;
struct TYPE_16__ {TYPE_7__* words; TYPE_5__* convnet; } ;

/* Variables and functions */
 int CCV_IO_ANY_STREAM ; 
 int CCV_IO_RGB_COLOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 scalar_t__ FUNC1 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ **,int,TYPE_7__**,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 char* ebb_http_header ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,...) ; 
 size_t FUNC13 (char*,int) ; 
 int /*<<< orphan*/  uri_ebb_buf_free ; 

int FUNC14(const void* context, const void* parsed, ebb_buf* buf)
{
	if (!parsed)
		return -1;
	convnet_param_parser_t* parser = (convnet_param_parser_t*)parsed;
	FUNC10(&parser->param_parser);
	if (parser->source.data == 0)
	{
		FUNC6(parser);
		return -1;
	}
	if (parser->convnet_and_words == 0)
	{
		FUNC6(parser->source.data);
		FUNC6(parser);
		return -1;
	}
	if (parser->top <= 0 || parser->top > parser->convnet_and_words->words->rnum)
	{
		FUNC6(parser->source.data);
		FUNC6(parser);
		return -1;
	}
	ccv_convnet_t* convnet = parser->convnet_and_words->convnet;
	if (convnet == 0)
	{
		FUNC6(parser->source.data);
		FUNC6(parser);
		return -1;
	}
	ccv_dense_matrix_t* image = 0;
	FUNC5(parser->source.data, &image, CCV_IO_ANY_STREAM | CCV_IO_RGB_COLOR, parser->source.written);
	FUNC6(parser->source.data);
	if (image == 0)
	{
		FUNC6(parser);
		return -1;
	}
	ccv_dense_matrix_t* input = 0;
	FUNC3(convnet->input, image, &input);
	FUNC4(image);
	ccv_array_t* rank = 0;
	FUNC2(convnet, &input, 1, &rank, parser->top, 1);
	// print out
	buf->len = 192 + rank->rnum * 30 + 2;
	char* data = (char*)FUNC7(buf->len);
	data[0] = '[';
	buf->written = 1;
	int i;
	for (i = 0; i < rank->rnum; i++)
	{
		char cell[1024];
		ccv_classification_t* classification = (ccv_classification_t*)FUNC1(rank, i);
		char* word = *(char**)FUNC1(parser->convnet_and_words->words, classification->id);
		FUNC12(cell, 1024, "{\"word\":\"%s\",\"confidence\":%f}", word, classification->confidence);
		size_t len = FUNC13(cell, 1024);
		while (buf->written + len + 1 >= buf->len)
		{
			buf->len = (buf->len * 3 + 1) / 2;
			data = (char*)FUNC11(data, buf->len);
		}
		FUNC8(data + buf->written, cell, len);
		buf->written += len + 1;
		data[buf->written - 1] = (i == rank->rnum - 1) ? ']' : ',';
	}
	// copy the http header
	char http_header[192];
	FUNC12(http_header, 192, ebb_http_header, buf->written + 1);
	size_t len = FUNC13(http_header, 192);
	if (buf->written + len + 1 >= buf->len)
	{
		buf->len = buf->written + len + 1;
		data = (char*)FUNC11(data, buf->len);
	}
	FUNC9(data + len, data, buf->written);
	FUNC8(data, http_header, len);
	buf->written += len + 1;
	data[buf->written - 1] = '\n';
	buf->data = data;
	buf->len = buf->written;
	buf->on_release = uri_ebb_buf_free;
	FUNC0(rank);
	FUNC4(input);
	FUNC6(parser);
	return 0;
}