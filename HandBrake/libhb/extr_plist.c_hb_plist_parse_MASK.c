#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  error; int /*<<< orphan*/  warning; int /*<<< orphan*/  characters; int /*<<< orphan*/  endElement; int /*<<< orphan*/  startElement; int /*<<< orphan*/  initialized; } ;
typedef  TYPE_1__ xmlSAXHandler ;
typedef  int /*<<< orphan*/  parser ;
struct TYPE_7__ {int /*<<< orphan*/ * plist; void* tag_stack; void* stack; int /*<<< orphan*/ * value; int /*<<< orphan*/ * key; scalar_t__ closed_top; } ;
typedef  TYPE_2__ parse_data_t ;
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 int /*<<< orphan*/  XML_SAX2_MAGIC ; 
 int /*<<< orphan*/  end_element ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  parse_error ; 
 int /*<<< orphan*/  parse_warning ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  start_element ; 
 int /*<<< orphan*/  text_data ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*,char const*,size_t) ; 

hb_value_t*
FUNC7(const char *buf, size_t len)
{
    xmlSAXHandler parser;
    parse_data_t pd;

    pd.stack = FUNC4();
    pd.tag_stack = FUNC4();
    pd.key = NULL;
    pd.value = NULL;
    pd.plist = NULL;
    pd.closed_top = 0;

    FUNC2(&parser, 0, sizeof(parser));
    parser.initialized = XML_SAX2_MAGIC;
    parser.startElement = start_element;
    parser.endElement = end_element;
    parser.characters = text_data;
    parser.warning = parse_warning;
    parser.error = parse_error;
    int result = FUNC6(&parser, &pd, buf, len);
    if (result != 0)
    {
        FUNC1("Plist parse failed");
        return NULL;
    }
    FUNC5();

    if (pd.key) FUNC0(pd.key);
    if (pd.value) FUNC0(pd.value);
    FUNC3(&pd.stack);
    FUNC3(&pd.tag_stack);

    return pd.plist;
}