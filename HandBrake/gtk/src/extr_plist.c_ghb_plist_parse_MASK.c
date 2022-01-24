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
struct TYPE_5__ {int /*<<< orphan*/ * plist; void* tag_stack; void* stack; int /*<<< orphan*/ * value; int /*<<< orphan*/ * key; int /*<<< orphan*/  closed_top; } ;
typedef  TYPE_1__ parse_data_t ;
typedef  int /*<<< orphan*/  gssize ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_6__ {int /*<<< orphan*/  error; int /*<<< orphan*/  passthrough; int /*<<< orphan*/  text; int /*<<< orphan*/  end_element; int /*<<< orphan*/  start_element; } ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  TYPE_2__ GMarkupParser ;
typedef  int /*<<< orphan*/  GMarkupParseContext ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  destroy_notify ; 
 int /*<<< orphan*/  end_element ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  parse_error ; 
 int /*<<< orphan*/  passthrough ; 
 int /*<<< orphan*/  start_element ; 
 int /*<<< orphan*/  text_data ; 

GhbValue*
FUNC7(const gchar *buf, gssize len)
{
    GMarkupParseContext *ctx;
    GMarkupParser parser;
    parse_data_t pd;
    GError *err = NULL;

    pd.stack = FUNC6();
    pd.tag_stack = FUNC6();
    pd.key = NULL;
    pd.value = NULL;
    pd.plist = NULL;
    pd.closed_top = FALSE;

    parser.start_element = start_element;
    parser.end_element = end_element;
    parser.text = text_data;
    parser.passthrough = passthrough;
    parser.error = parse_error;
    ctx = FUNC3(&parser, 0, &pd, destroy_notify);

    FUNC4(ctx, buf, len, &err);
    FUNC1(ctx, &err);
    FUNC2(ctx);
    if (pd.key) FUNC0(pd.key);
    if (pd.value) FUNC0(pd.value);
    FUNC5(pd.stack);
    FUNC5(pd.tag_stack);
    return pd.plist;
}