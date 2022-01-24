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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int u_int32_t ;
struct ifclassq {int /*<<< orphan*/  ifcq_type; int /*<<< orphan*/  ifcq_dropcnt; int /*<<< orphan*/  ifcq_xmitcnt; } ;
struct if_ifclassq_stats {int /*<<< orphan*/  ifqs_scheduler; int /*<<< orphan*/  ifqs_dropcnt; int /*<<< orphan*/  ifqs_xmitcnt; int /*<<< orphan*/  ifqs_maxlen; int /*<<< orphan*/  ifqs_len; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC5 (struct if_ifclassq_stats*,int /*<<< orphan*/ ) ; 
 struct if_ifclassq_stats* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ifclassq*,int,struct if_ifclassq_stats*) ; 

int
FUNC9(struct ifclassq *ifq, u_int32_t qid, void *ubuf,
    u_int32_t *nbytes)
{
	struct if_ifclassq_stats *ifqs;
	int err;

	if (*nbytes < sizeof (*ifqs))
		return (EINVAL);

	ifqs = FUNC6(sizeof (*ifqs), M_TEMP, M_WAITOK | M_ZERO);
	if (ifqs == NULL)
		return (ENOMEM);

	FUNC2(ifq);
	if (!FUNC0(ifq)) {
		FUNC4(ifq);
		FUNC5(ifqs, M_TEMP);
		return (ENXIO);
	}

	ifqs->ifqs_len = FUNC1(ifq);
	ifqs->ifqs_maxlen = FUNC3(ifq);
	*(&ifqs->ifqs_xmitcnt) = *(&ifq->ifcq_xmitcnt);
	*(&ifqs->ifqs_dropcnt) = *(&ifq->ifcq_dropcnt);
	ifqs->ifqs_scheduler = ifq->ifcq_type;

	err = FUNC8(ifq, qid, ifqs);
	FUNC4(ifq);

	if (err == 0 && (err = FUNC7((caddr_t)ifqs,
	    (user_addr_t)(uintptr_t)ubuf, sizeof (*ifqs))) == 0)
		*nbytes = sizeof (*ifqs);

	FUNC5(ifqs, M_TEMP);

	return (err);
}