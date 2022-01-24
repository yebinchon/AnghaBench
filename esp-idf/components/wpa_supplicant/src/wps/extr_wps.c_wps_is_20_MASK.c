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
struct wps_parse_attr {int /*<<< orphan*/ * version2; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct wpabuf const*,struct wps_parse_attr*) ; 

int FUNC3(const struct wpabuf *msg)
{
    struct wps_parse_attr *attr;
    int ret;

    attr = (struct wps_parse_attr *)FUNC1(sizeof(struct wps_parse_attr));
    if (attr == NULL)
        return 0;

    if (msg == NULL || FUNC2(msg, attr) < 0) {
        ret = 0;
    } else {
        ret = (attr->version2 != NULL);
    }
    FUNC0(attr);
    return ret;
}