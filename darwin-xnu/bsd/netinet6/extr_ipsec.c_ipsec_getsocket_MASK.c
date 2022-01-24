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
 struct ipsec_tag* FUNC0 (struct mbuf*) ; 

struct socket *
FUNC1(struct mbuf *m)
{
	struct ipsec_tag	*itag;
	
	itag = FUNC0(m);
	if (itag)
		return itag->socket;
	else
		return NULL;
}