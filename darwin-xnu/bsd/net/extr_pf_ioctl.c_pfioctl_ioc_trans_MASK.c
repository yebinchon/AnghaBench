#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int user_addr_t ;
typedef  int u_long ;
struct proc {int dummy; } ;
struct pfr_table {char* anchor; size_t rs_num; int /*<<< orphan*/  ticket; int /*<<< orphan*/  pfrt_anchor; } ;
struct pfioc_trans_e {char* anchor; size_t rs_num; int /*<<< orphan*/  ticket; int /*<<< orphan*/  pfrt_anchor; } ;
struct pfioc_trans_64 {int esize; int size; int array; } ;
struct pfioc_trans_32 {int esize; int size; int array; } ;
struct pf_ruleset {TYPE_2__* rules; int /*<<< orphan*/  tticket; int /*<<< orphan*/  topen; } ;
struct TYPE_3__ {int /*<<< orphan*/  ticket; int /*<<< orphan*/  open; } ;
struct TYPE_4__ {TYPE_1__ inactive; } ;

/* Variables and functions */
#define  DIOCXBEGIN 132 
#define  DIOCXCOMMIT 131 
#define  DIOCXROLLBACK 130 
 int EBUSY ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
#define  PF_RULESET_ALTQ 129 
 size_t PF_RULESET_MAX ; 
#define  PF_RULESET_TABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pfr_table*,int /*<<< orphan*/ ) ; 
 struct pfr_table* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_table*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct pfr_table*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pfr_table*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,size_t,char*) ; 
 struct pf_ruleset* FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,size_t,char*) ; 
 int FUNC10 (struct pfr_table*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pfr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pfr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct proc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC15(u_long cmd, struct pfioc_trans_32 *io32,
    struct pfioc_trans_64 *io64, struct proc *p)
{
	int p64 = FUNC13(p);
	int error = 0, esize, size;
	user_addr_t buf;

	esize = (p64 ? io64->esize : io32->esize);
	size = (p64 ? io64->size : io32->size);
	buf = (p64 ? io64->array : io32->array);

	switch (cmd) {
	case DIOCXBEGIN: {
		struct pfioc_trans_e	*ioe;
		struct pfr_table	*table;
		int			 i;

		if (esize != sizeof (*ioe)) {
			error = ENODEV;
			goto fail;
		}
		ioe = FUNC2(sizeof (*ioe), M_TEMP, M_WAITOK);
		table = FUNC2(sizeof (*table), M_TEMP, M_WAITOK);
		for (i = 0; i < size; i++, buf += sizeof (*ioe)) {
			if (FUNC4(buf, ioe, sizeof (*ioe))) {
				FUNC1(table, M_TEMP);
				FUNC1(ioe, M_TEMP);
				error = EFAULT;
				goto fail;
			}
			ioe->anchor[sizeof (ioe->anchor) - 1] = '\0';
			switch (ioe->rs_num) {
			case PF_RULESET_ALTQ:
				break;
			case PF_RULESET_TABLE:
				FUNC3(table, sizeof (*table));
				FUNC14(table->pfrt_anchor, ioe->anchor,
				    sizeof (table->pfrt_anchor));
				if ((error = FUNC10(table,
				    &ioe->ticket, NULL, 0))) {
					FUNC1(table, M_TEMP);
					FUNC1(ioe, M_TEMP);
					goto fail;
				}
				break;
			default:
				if ((error = FUNC6(&ioe->ticket,
				    ioe->rs_num, ioe->anchor))) {
					FUNC1(table, M_TEMP);
					FUNC1(ioe, M_TEMP);
					goto fail;
				}
				break;
			}
			if (FUNC5(ioe, buf, sizeof (*ioe))) {
				FUNC1(table, M_TEMP);
				FUNC1(ioe, M_TEMP);
				error = EFAULT;
				goto fail;
			}
		}
		FUNC1(table, M_TEMP);
		FUNC1(ioe, M_TEMP);
		break;
	}

	case DIOCXROLLBACK: {
		struct pfioc_trans_e	*ioe;
		struct pfr_table	*table;
		int			 i;

		if (esize != sizeof (*ioe)) {
			error = ENODEV;
			goto fail;
		}
		ioe = FUNC2(sizeof (*ioe), M_TEMP, M_WAITOK);
		table = FUNC2(sizeof (*table), M_TEMP, M_WAITOK);
		for (i = 0; i < size; i++, buf += sizeof (*ioe)) {
			if (FUNC4(buf, ioe, sizeof (*ioe))) {
				FUNC1(table, M_TEMP);
				FUNC1(ioe, M_TEMP);
				error = EFAULT;
				goto fail;
			}
			ioe->anchor[sizeof (ioe->anchor) - 1] = '\0';
			switch (ioe->rs_num) {
			case PF_RULESET_ALTQ:
				break;
			case PF_RULESET_TABLE:
				FUNC3(table, sizeof (*table));
				FUNC14(table->pfrt_anchor, ioe->anchor,
				    sizeof (table->pfrt_anchor));
				if ((error = FUNC12(table,
				    ioe->ticket, NULL, 0))) {
					FUNC1(table, M_TEMP);
					FUNC1(ioe, M_TEMP);
					goto fail; /* really bad */
				}
				break;
			default:
				if ((error = FUNC9(ioe->ticket,
				    ioe->rs_num, ioe->anchor))) {
					FUNC1(table, M_TEMP);
					FUNC1(ioe, M_TEMP);
					goto fail; /* really bad */
				}
				break;
			}
		}
		FUNC1(table, M_TEMP);
		FUNC1(ioe, M_TEMP);
		break;
	}

	case DIOCXCOMMIT: {
		struct pfioc_trans_e	*ioe;
		struct pfr_table	*table;
		struct pf_ruleset	*rs;
		user_addr_t		 _buf = buf;
		int			 i;

		if (esize != sizeof (*ioe)) {
			error = ENODEV;
			goto fail;
		}
		ioe = FUNC2(sizeof (*ioe), M_TEMP, M_WAITOK);
		table = FUNC2(sizeof (*table), M_TEMP, M_WAITOK);
		/* first makes sure everything will succeed */
		for (i = 0; i < size; i++, buf += sizeof (*ioe)) {
			if (FUNC4(buf, ioe, sizeof (*ioe))) {
				FUNC1(table, M_TEMP);
				FUNC1(ioe, M_TEMP);
				error = EFAULT;
				goto fail;
			}
			ioe->anchor[sizeof (ioe->anchor) - 1] = '\0';
			switch (ioe->rs_num) {
			case PF_RULESET_ALTQ:
				break;
			case PF_RULESET_TABLE:
				rs = FUNC8(ioe->anchor);
				if (rs == NULL || !rs->topen || ioe->ticket !=
				    rs->tticket) {
					FUNC1(table, M_TEMP);
					FUNC1(ioe, M_TEMP);
					error = EBUSY;
					goto fail;
				}
				break;
			default:
				if (ioe->rs_num < 0 || ioe->rs_num >=
				    PF_RULESET_MAX) {
					FUNC1(table, M_TEMP);
					FUNC1(ioe, M_TEMP);
					error = EINVAL;
					goto fail;
				}
				rs = FUNC8(ioe->anchor);
				if (rs == NULL ||
				    !rs->rules[ioe->rs_num].inactive.open ||
				    rs->rules[ioe->rs_num].inactive.ticket !=
				    ioe->ticket) {
					FUNC1(table, M_TEMP);
					FUNC1(ioe, M_TEMP);
					error = EBUSY;
					goto fail;
				}
				break;
			}
		}
		buf = _buf;
		/* now do the commit - no errors should happen here */
		for (i = 0; i < size; i++, buf += sizeof (*ioe)) {
			if (FUNC4(buf, ioe, sizeof (*ioe))) {
				FUNC1(table, M_TEMP);
				FUNC1(ioe, M_TEMP);
				error = EFAULT;
				goto fail;
			}
			ioe->anchor[sizeof (ioe->anchor) - 1] = '\0';
			switch (ioe->rs_num) {
			case PF_RULESET_ALTQ:
				break;
			case PF_RULESET_TABLE:
				FUNC3(table, sizeof (*table));
				FUNC14(table->pfrt_anchor, ioe->anchor,
				    sizeof (table->pfrt_anchor));
				if ((error = FUNC11(table, ioe->ticket,
				    NULL, NULL, 0))) {
					FUNC1(table, M_TEMP);
					FUNC1(ioe, M_TEMP);
					goto fail; /* really bad */
				}
				break;
			default:
				if ((error = FUNC7(ioe->ticket,
				    ioe->rs_num, ioe->anchor))) {
					FUNC1(table, M_TEMP);
					FUNC1(ioe, M_TEMP);
					goto fail; /* really bad */
				}
				break;
			}
		}
		FUNC1(table, M_TEMP);
		FUNC1(ioe, M_TEMP);
		break;
	}

	default:
		FUNC0(0);
		/* NOTREACHED */
	}
fail:
	return (error);
}