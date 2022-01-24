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
struct TYPE_5__ {scalar_t__* version; scalar_t__* build; int /*<<< orphan*/  description; int /*<<< orphan*/  tag_stack; int /*<<< orphan*/ * value; int /*<<< orphan*/ * key; int /*<<< orphan*/  item; } ;
typedef  TYPE_1__ parse_data_t ;
typedef  int /*<<< orphan*/  gint ;
typedef  scalar_t__ gchar ;
struct TYPE_6__ {int /*<<< orphan*/  error; int /*<<< orphan*/  passthrough; int /*<<< orphan*/  text; int /*<<< orphan*/  end_element; int /*<<< orphan*/  start_element; } ;
typedef  TYPE_2__ GMarkupParser ;
typedef  int /*<<< orphan*/  GMarkupParseContext ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_MARKUP_TREAT_CDATA_AS_TEXT ; 
 int /*<<< orphan*/  destroy_notify ; 
 int /*<<< orphan*/  end_element ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__* FUNC8 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  parse_error ; 
 int /*<<< orphan*/  passthrough ; 
 int /*<<< orphan*/  start_element ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__* FUNC10 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  text_data ; 

void
FUNC11(gchar *buf, gchar **desc, gchar **build, gchar **version)
{
    GMarkupParseContext *ctx;
    GMarkupParser parser;
    parse_data_t pd;
    GError *err = NULL;
    gint len;
    gchar *start;
    //gchar tmp[4096]

    // Skip junk at beginning of buffer
    start = FUNC10(buf, "<?xml ");
    pd.description = FUNC7("");
    pd.item = FALSE;
    pd.build = NULL;
    pd.version = NULL;
    len = FUNC9(start);
    pd.tag_stack = FUNC5();
    pd.key = NULL;
    pd.value = NULL;

    parser.start_element = start_element;
    parser.end_element = end_element;
    parser.text = text_data;
    parser.passthrough = passthrough;
    parser.error = parse_error;
    ctx = FUNC2(
            &parser, G_MARKUP_TREAT_CDATA_AS_TEXT, &pd, destroy_notify);

    FUNC3(ctx, start, len, &err);
    FUNC0(ctx, &err);
    FUNC1(ctx);
    FUNC4(pd.tag_stack);
    *desc = FUNC6(pd.description, FALSE);
    // work around a bug to leaves the CDATA closing brakets on the string
    gchar *glitch;
    glitch = FUNC8(*desc, "]]>");
    if (glitch)
        *glitch = 0;
    *build = pd.build;
    *version = pd.version;
}