#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wps_parse_attr {scalar_t__* selected_registrar; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct wpabuf const*,struct wps_parse_attr*) ; 

int FUNC3(const struct wpabuf *wps_a,
               const struct wpabuf *wps_b)
{
    struct wps_parse_attr *attr_a, *attr_b;
    int sel_a, sel_b;
    int ret = 0;

    attr_a = (struct wps_parse_attr *)FUNC1(sizeof(struct wps_parse_attr));
    attr_b = (struct wps_parse_attr *)FUNC1(sizeof(struct wps_parse_attr));

    if (attr_a == NULL || attr_b == NULL) {
        ret = 0;
        goto _out;
    }

    if (wps_a == NULL || FUNC2(wps_a, attr_a) < 0)
        return 1;
    if (wps_b == NULL || FUNC2(wps_b, attr_b) < 0)
        return -1;

    sel_a = attr_a->selected_registrar && *attr_a->selected_registrar != 0;
    sel_b = attr_b->selected_registrar && *attr_b->selected_registrar != 0;

    if (sel_a && !sel_b) {
        ret = -1;
        goto _out;
    }
    if (!sel_a && sel_b) {
        ret = 1;
        goto _out;
    }

_out:
    if (attr_a)
        FUNC0(attr_a);
    if (attr_b)
        FUNC0(attr_b);
    return ret;
}