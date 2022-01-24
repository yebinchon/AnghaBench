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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*,struct label*,struct mbuf*,struct label*) ; 
 struct label* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  mbuf_label_associate_netlayer ; 

void
FUNC2(struct mbuf *oldmbuf, struct mbuf *newmbuf)
{
	struct label *oldmbuflabel, *newmbuflabel;

	oldmbuflabel = FUNC1(oldmbuf);
	newmbuflabel = FUNC1(newmbuf);

	FUNC0(mbuf_label_associate_netlayer, oldmbuf, oldmbuflabel,
	    newmbuf, newmbuflabel);
}