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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ifclassq {int dummy; } ;
typedef  int /*<<< orphan*/  mbuf_svc_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  MBUF_SC_UNSPEC ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int
FUNC6(struct ifclassq *ifq, mbuf_svc_class_t sc, u_int32_t *packets,
    u_int32_t *bytes)
{
	int err = 0;

	FUNC2(ifq);
	if (sc == MBUF_SC_UNSPEC) {
		FUNC5(packets != NULL);
		*packets = FUNC0(ifq);
	} else {
		FUNC5(FUNC4(sc));
		FUNC5(packets != NULL && bytes != NULL);
		FUNC1(ifq, sc, packets, bytes, err);
	}
	FUNC3(ifq);

	return (err);
}