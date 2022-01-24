#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  value; int /*<<< orphan*/  description; int /*<<< orphan*/  item; int /*<<< orphan*/  tag_stack; } ;
typedef  TYPE_1__ parse_data_t ;
typedef  int /*<<< orphan*/  gsize ;
typedef  scalar_t__ gpointer ;
typedef  int gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GMarkupParseContext ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
#define  A_DESCRIPTION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC4(
    GMarkupParseContext *ctx,
    const gchar *text,
    gsize len,
    gpointer ud,
    GError **error)
{
    parse_data_t *pd = (parse_data_t*)ud;
    union
    {
        gint id;
        gpointer pid;
    } start_id;

    start_id.pid = FUNC1(pd->tag_stack);
    switch (start_id.id)
    {
        case A_DESCRIPTION:
        {
            if (pd->item)
            {
                FUNC3(pd->description, text);
            }
        } break;
        default:
        {
            if (pd->value) FUNC0(pd->value);
            pd->value = FUNC2(text);
        } break;
    }
}