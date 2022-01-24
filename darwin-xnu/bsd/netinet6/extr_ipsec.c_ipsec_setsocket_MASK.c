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
struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct ipsec_tag {struct socket* socket; } ;

/* Variables and functions */
 int ENOBUFS ; 
 struct ipsec_tag* FUNC0 (struct mbuf*) ; 
 struct ipsec_tag* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,struct ipsec_tag*) ; 

int
FUNC3(struct mbuf *m, struct socket *so)
{
	struct ipsec_tag	*tag;
	
	/* if so == NULL, don't insist on getting the aux mbuf */
	if (so) {
		tag = FUNC0(m);
		if (!tag)
			return ENOBUFS;
	} else
		tag = FUNC1(m);
	if (tag) {
		tag->socket = so;
		FUNC2(m, tag);
	}
	return 0;
}