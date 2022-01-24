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

/* Variables and functions */
 struct wpabuf* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 scalar_t__ FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,struct wpabuf*) ; 

struct wpabuf * FUNC4(struct wpabuf *a, struct wpabuf *b)
{
	struct wpabuf *n = NULL;
	size_t len = 0;

	if (b == NULL)
		return a;

	if (a)
		len += FUNC2(a);
	if (b)
		len += FUNC2(b);

	n = FUNC0(len);
	if (n) {
		if (a)
			FUNC3(n, a);
		if (b)
			FUNC3(n, b);
	}

	FUNC1(a);
	FUNC1(b);

	return n;
}