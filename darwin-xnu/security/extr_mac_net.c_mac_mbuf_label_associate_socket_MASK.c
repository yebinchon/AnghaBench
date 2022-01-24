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
struct xsocket {int dummy; } ;
struct socket {int /*<<< orphan*/  so_label; } ;
struct mbuf {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xsocket*,int /*<<< orphan*/ ,struct mbuf*,struct label*) ; 
 struct label* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  mbuf_label_associate_socket ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct xsocket*) ; 

void
FUNC3(struct socket *socket, struct mbuf *mbuf)
{
	struct label *label;
	struct xsocket xso;

	/* socket must be locked */

	label = FUNC1(mbuf);

	FUNC2(socket, &xso);
	FUNC0(mbuf_label_associate_socket, &xso, socket->so_label,
		    mbuf, label);
}