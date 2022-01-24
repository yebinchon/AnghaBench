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
typedef  int /*<<< orphan*/  uint8_t ;
struct wpabuf {int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WIFI_APPIE_WPS_AR ; 
 int /*<<< orphan*/  WPS_REQ_ENROLLEE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wpabuf*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
    struct wpabuf *buf = (struct wpabuf *)FUNC4(WPS_REQ_ENROLLEE);

    FUNC1(MSG_DEBUG, "wps build: wps ar");

    if (buf) {
        FUNC0(WIFI_APPIE_WPS_AR, (uint8_t *)FUNC3(buf), buf->used, 0);
        FUNC2(buf);
    }
}