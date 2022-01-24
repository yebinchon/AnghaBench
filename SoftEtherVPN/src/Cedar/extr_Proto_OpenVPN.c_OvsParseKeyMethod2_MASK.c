#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_13__ {int Current; } ;
struct TYPE_12__ {int* PreMasterSecret; int* Random1; int* Random2; struct TYPE_12__* PeerInfo; struct TYPE_12__* Password; struct TYPE_12__* Username; struct TYPE_12__* OptionString; } ;
typedef  TYPE_1__ OPENVPN_KEY_METHOD_2 ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC3 (TYPE_2__*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

UINT FUNC7(OPENVPN_KEY_METHOD_2 *ret, UCHAR *data, UINT size, bool client_mode)
{
	BUF *b;
	UINT read_size = 0;
	UINT ui;
	UCHAR uc;
	// Validate arguments
	FUNC6(ret, sizeof(OPENVPN_KEY_METHOD_2));
	if (ret == NULL || data == NULL || size == 0)
	{
		return 0;
	}

	b = FUNC1();
	FUNC5(b, data, size);
	FUNC4(b, 0, 0);

	// Reserved
	if (FUNC3(b, &ui, sizeof(UINT)) == sizeof(UINT))
	{
		// Method
		if (FUNC3(b, &uc, sizeof(UCHAR)) == sizeof(UCHAR) && uc == 2)
		{
			// Pre Master Secret
			if (client_mode == false || FUNC3(b, ret->PreMasterSecret, sizeof(ret->PreMasterSecret)) == sizeof(ret->PreMasterSecret))
			{
				// Random1
				if (FUNC3(b, ret->Random1, sizeof(ret->Random1)) == sizeof(ret->Random1))
				{
					// Random2
					if (FUNC3(b, ret->Random2, sizeof(ret->Random2)) == sizeof(ret->Random2))
					{
						// String
						if (FUNC2(b, ret->OptionString, sizeof(ret->OptionString)) &&
							FUNC2(b, ret->Username, sizeof(ret->Username)) &&
							FUNC2(b, ret->Password, sizeof(ret->Password)))
							{
								if (!FUNC2(b, ret->PeerInfo, sizeof(ret->PeerInfo)))
								{
									FUNC6(ret->PeerInfo, sizeof(ret->PeerInfo));
								}
							read_size = b->Current;
						}
					}
				}
			}
		}
	}

	FUNC0(b);

	return read_size;
}