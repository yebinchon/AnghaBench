#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nb_as; int /*<<< orphan*/  is_live; } ;
typedef  TYPE_1__ WebMDashMuxContext ;
struct TYPE_11__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    int i;
    double start = 0.0;
    int ret;
    WebMDashMuxContext *w = s->priv_data;
    ret = FUNC3(s);
    if (ret < 0) {
        goto fail;
    }
    ret = FUNC6(s);
    if (ret < 0) {
        goto fail;
    }
    FUNC0(s->pb, "<Period id=\"0\"");
    FUNC0(s->pb, " start=\"PT%gS\"", start);
    if (!w->is_live) {
        FUNC0(s->pb, " duration=\"PT%gS\"", FUNC2(s));
    }
    FUNC0(s->pb, " >\n");

    for (i = 0; i < w->nb_as; i++) {
        ret = FUNC4(s, i);
        if (ret < 0) {
            goto fail;
        }
    }

    FUNC0(s->pb, "</Period>\n");
    FUNC5(s);
fail:
    FUNC1(s);
    return ret < 0 ? ret : 0;
}