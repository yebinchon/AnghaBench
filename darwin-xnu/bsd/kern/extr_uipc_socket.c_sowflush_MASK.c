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
struct sockbuf {int sb_flags; int /*<<< orphan*/  sb_sel; int /*<<< orphan*/ * sb_upcallarg; int /*<<< orphan*/ * sb_upcall; } ;
struct socket {struct sockbuf so_snd; } ;

/* Variables and functions */
 int SBL_IGNDEFUNCT ; 
 int SBL_NOINTR ; 
 int SBL_WAIT ; 
 int SB_DROP ; 
 int SB_LOCK ; 
 int SB_SEL ; 
 int SB_UPCALL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct socket *so)
{
	struct sockbuf *sb = &so->so_snd;

	/*
	 * Obtain lock on the socket buffer (SB_LOCK).  This is required
	 * to prevent the socket buffer from being unexpectedly altered
	 * while it is used by another thread in socket send/receive.
	 *
	 * sblock() must not fail here, hence the assertion.
	 */
	(void) FUNC1(sb, SBL_WAIT | SBL_NOINTR | SBL_IGNDEFUNCT);
	FUNC0(sb->sb_flags & SB_LOCK);

	sb->sb_flags		&= ~(SB_SEL|SB_UPCALL);
	sb->sb_flags		|= SB_DROP;
	sb->sb_upcall		= NULL;
	sb->sb_upcallarg	= NULL;

	FUNC3(sb, TRUE);	/* keep socket locked */

	FUNC4(&sb->sb_sel);
	FUNC2(sb);
}