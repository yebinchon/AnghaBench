#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h ;
typedef  int USHORT ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_14__ {int Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_13__ {int /*<<< orphan*/  AnswerRRs; int /*<<< orphan*/  NumQuery; } ;
struct TYPE_12__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ IP ;
typedef  TYPE_2__ DNSV4_HEADER ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_3__* FUNC4 (TYPE_3__*,int,int*,int*) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

bool FUNC7(UCHAR *data, UINT size, IP *ret_ip)
{
	BUF *buf = FUNC3(data, size);
	bool ret = false;
	DNSV4_HEADER h;

	if (FUNC5(buf, &h, sizeof(h)) == sizeof(h))
	{
		UINT num_questions = FUNC1(h.NumQuery);
		UINT num_answers = FUNC1(h.AnswerRRs);
		UINT i;

		for (i = 0;i < num_questions;i++)
		{
			BUF *r = FUNC4(buf, false, NULL, NULL);

			if (r != NULL)
			{
				FUNC2(r);
			}
			else
			{
				goto LABEL_CLEANUP;
			}
		}

		for (i = 0;i < num_answers;i++)
		{
			USHORT tp, cl;
			BUF *r = FUNC4(buf, true, &tp, &cl);

			if (r != NULL)
			{
				if (tp == 0x0001 && cl == 0x0001 && r->Size == 4)
				{
					ret = true;

					if (ret_ip != NULL)
					{
						FUNC6(ret_ip, sizeof(IP));

						FUNC0(ret_ip->addr, r->Buf, 4);
					}
				}

				FUNC2(r);
			}
			else
			{
				goto LABEL_CLEANUP;
			}
		}
	}

LABEL_CLEANUP:
	FUNC2(buf);

	return ret;
}