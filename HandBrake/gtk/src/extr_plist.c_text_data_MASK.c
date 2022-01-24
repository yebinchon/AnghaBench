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
struct TYPE_2__ {scalar_t__ value; } ;
typedef  TYPE_1__ parse_data_t ;
typedef  int /*<<< orphan*/  gsize ;
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GMarkupParseContext ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC2(
    GMarkupParseContext *ctx,
    const gchar *text,
    gsize len,
    gpointer ud,
    GError **error)
{
    parse_data_t *pd = (parse_data_t*)ud;
    if (pd->value) FUNC0(pd->value);
    pd->value = FUNC1(text);
}