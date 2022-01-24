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
struct wpabuf {int dummy; } ;
typedef  enum wps_msg_type { ____Placeholder_wps_msg_type } wps_msg_type ;

/* Variables and functions */
 int ATTR_MSG_TYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

int FUNC3(struct wpabuf *msg, enum wps_msg_type msg_type)
{
	FUNC0(MSG_DEBUG,  "WPS:  * Message Type (%d)", msg_type);
	FUNC1(msg, ATTR_MSG_TYPE);
	FUNC1(msg, 1);
	FUNC2(msg, msg_type);
	return 0;
}