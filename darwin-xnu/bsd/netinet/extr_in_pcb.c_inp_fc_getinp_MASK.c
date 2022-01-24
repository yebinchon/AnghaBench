#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct inpcb {int /*<<< orphan*/  inp_flags2; int /*<<< orphan*/  infc_link; } ;
struct TYPE_3__ {int inp_flowhash; } ;

/* Variables and functions */
 int /*<<< orphan*/  INP2_IN_FCTREE ; 
 int INPFC_REMOVE ; 
 int INPFC_SOLOCKED ; 
 struct inpcb* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct inpcb*) ; 
 int /*<<< orphan*/  WNT_ACQUIRE ; 
 scalar_t__ WNT_STOPUSING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct inpcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  inp_fc_lck ; 
 int /*<<< orphan*/  inp_fc_tree ; 
 TYPE_1__ key_inp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inpcb *
FUNC6(u_int32_t flowhash, u_int32_t flags)
{
	struct inpcb *inp = NULL;
	int locked = (flags & INPFC_SOLOCKED) ? 1 : 0;

	FUNC4(&inp_fc_lck);
	key_inp.inp_flowhash = flowhash;
	inp = FUNC0(inp_fc_tree, &inp_fc_tree, &key_inp);
	if (inp == NULL) {
		/* inp is not present, return */
		FUNC5(&inp_fc_lck);
		return (NULL);
	}

	if (flags & INPFC_REMOVE) {
		FUNC1(inp_fc_tree, &inp_fc_tree, inp);
		FUNC5(&inp_fc_lck);

		FUNC2(&(inp->infc_link), sizeof (inp->infc_link));
		inp->inp_flags2 &= ~INP2_IN_FCTREE;
		return (NULL);
	}

	if (FUNC3(inp, WNT_ACQUIRE, locked) == WNT_STOPUSING)
		inp = NULL;
	FUNC5(&inp_fc_lck);

	return (inp);
}