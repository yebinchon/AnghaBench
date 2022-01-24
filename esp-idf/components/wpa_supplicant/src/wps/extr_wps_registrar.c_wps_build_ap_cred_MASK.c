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
struct wps_data {int dummy; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CRED ; 
 struct wpabuf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct wps_data *wps)
{
	struct wpabuf *msg, *plain;

	msg = FUNC0(1000);
	if (msg == NULL)
		return NULL;

	plain = FUNC0(200);
	if (plain == NULL) {
		FUNC1(msg);
		return NULL;
	}

	if (FUNC5(wps, plain)) {
		FUNC1(plain);
		FUNC1(msg);
		return NULL;
	}

	FUNC3(msg, ATTR_CRED);
	FUNC3(msg, FUNC2(plain));
	FUNC4(msg, plain);
	FUNC1(plain);

	return msg;
}