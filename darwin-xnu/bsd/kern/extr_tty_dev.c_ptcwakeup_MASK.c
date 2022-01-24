#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty {int /*<<< orphan*/  t_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct ptmx_ioctl {TYPE_1__ pt_selw; TYPE_1__ pt_selr; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 struct ptmx_ioctl* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct tty *tp, int flag)
{
	struct ptmx_ioctl *pti = FUNC3(tp->t_dev, 0, NULL);
	if (pti == NULL)
		return;

	if (flag & FREAD) {
		FUNC4(&pti->pt_selr);
		FUNC5(FUNC1(tp));
		FUNC0(&pti->pt_selr.si_note, 1);
	}
	if (flag & FWRITE) {
		FUNC4(&pti->pt_selw);
		FUNC5(FUNC2(tp));
		FUNC0(&pti->pt_selw.si_note, 1);
	}
}