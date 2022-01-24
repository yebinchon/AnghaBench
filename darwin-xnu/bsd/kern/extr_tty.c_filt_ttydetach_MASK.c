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
struct selinfo {int /*<<< orphan*/  si_note; } ;
struct tty {struct selinfo t_wsel; struct selinfo t_rsel; } ;
struct knote {int /*<<< orphan*/ * kn_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
#define  FREAD 129 
#define  FWRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int FUNC1 (struct knote*) ; 
 int /*<<< orphan*/  FUNC2 (struct knote*,int /*<<< orphan*/ ) ; 
 struct tty* FUNC3 (struct knote*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 

__attribute__((used)) static void
FUNC6(struct knote *kn)
{
	struct tty *tp;

	tp = FUNC3(kn);
	if (!tp) {
		FUNC2(kn, ENOENT);
		return;
	}

	struct selinfo *si = NULL;
	switch (FUNC1(kn)) {
	case FREAD:
		si = &tp->t_rsel;
		break;
	case FWRITE:
		si = &tp->t_wsel;
		break;
	/* knote_get_seltype will panic on default */
	}

	FUNC0(&si->si_note, kn);
	kn->kn_hook = NULL;

	FUNC4(tp);
	FUNC5(tp);
}