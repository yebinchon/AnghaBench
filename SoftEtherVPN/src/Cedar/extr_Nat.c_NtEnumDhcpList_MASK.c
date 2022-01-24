#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int Active; int /*<<< orphan*/  DhcpLeaseList; } ;
typedef  TYPE_1__ VH ;
typedef  size_t UINT ;
struct TYPE_18__ {int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Mask; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  ExpireTime; int /*<<< orphan*/  LeasedTime; int /*<<< orphan*/  Id; } ;
struct TYPE_17__ {int Online; int /*<<< orphan*/  lock; TYPE_1__* Virtual; } ;
struct TYPE_16__ {int NumItem; TYPE_2__* Items; } ;
struct TYPE_15__ {int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Mask; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  MacAddress; void* ExpireTime; void* LeasedTime; int /*<<< orphan*/  Id; } ;
typedef  TYPE_2__ RPC_ENUM_DHCP_ITEM ;
typedef  TYPE_3__ RPC_ENUM_DHCP ;
typedef  TYPE_4__ NAT ;
typedef  TYPE_5__ DHCP_LEASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t ERR_NO_ERROR ; 
 size_t ERR_OFFLINE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC13 (int) ; 

UINT FUNC14(NAT *n, RPC_ENUM_DHCP *t)
{
	UINT ret = ERR_NO_ERROR;
	VH *v = NULL;

	FUNC4(n->lock);
	{
		v = n->Virtual;

		if (n->Online == false || v == NULL)
		{
			ret = ERR_OFFLINE;
		}
		else
		{
			FUNC6(v);
			{
				if (v->Active == false)
				{
					ret = ERR_OFFLINE;
				}
				else
				{
					FUNC1(t);
					FUNC12(t, sizeof(RPC_ENUM_DHCP));

					FUNC5(v->DhcpLeaseList);
					{
						UINT i;
						t->NumItem = FUNC3(v->DhcpLeaseList);
						t->Items = FUNC13(sizeof(RPC_ENUM_DHCP_ITEM) * t->NumItem);

						for (i = 0;i < t->NumItem;i++)
						{
							DHCP_LEASE *dhcp = FUNC2(v->DhcpLeaseList, i);
							RPC_ENUM_DHCP_ITEM *e = &t->Items[i];

							e->Id = dhcp->Id;
							e->LeasedTime = FUNC8(dhcp->LeasedTime);
							e->ExpireTime = FUNC8(dhcp->ExpireTime);
							FUNC0(e->MacAddress, dhcp->MacAddress, 6);
							e->IpAddress = dhcp->IpAddress;
							e->Mask = dhcp->Mask;
							FUNC7(e->Hostname, sizeof(e->Hostname), dhcp->Hostname);
						}
					}
					FUNC10(v->DhcpLeaseList);
				}
			}
			FUNC11(v);
		}
	}
	FUNC9(n->lock);

	return ret;
}