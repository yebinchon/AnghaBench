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
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  OsServiceCheckThreadEvent; int /*<<< orphan*/  LockSettings; TYPE_3__* Ike; TYPE_10__* UdpListener; TYPE_2__* Cedar; int /*<<< orphan*/  Services; scalar_t__ NoMoreChangeSettings; } ;
struct TYPE_17__ {int /*<<< orphan*/  IPsec_Secret; scalar_t__ EtherIP_IPsec; scalar_t__ L2TP_IPsec; scalar_t__ L2TP_Raw; } ;
struct TYPE_16__ {int /*<<< orphan*/  Secret; } ;
struct TYPE_15__ {TYPE_1__* Server; } ;
struct TYPE_14__ {TYPE_4__ ListenIP; } ;
struct TYPE_13__ {int /*<<< orphan*/  ListenIP; } ;
typedef  TYPE_4__ IPSEC_SERVICES ;
typedef  TYPE_5__ IPSEC_SERVER ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSEC_PORT_IPSEC_ESP_RAW ; 
 int /*<<< orphan*/  IPSEC_PORT_IPSEC_ESP_RAW_WPF ; 
 int /*<<< orphan*/  IPSEC_PORT_IPSEC_ESP_UDP ; 
 int /*<<< orphan*/  IPSEC_PORT_IPSEC_ISAKMP ; 
 int /*<<< orphan*/  IPSEC_PORT_L2TP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(IPSEC_SERVER *s, IPSEC_SERVICES *sl)
{
	// Validate arguments
	if (s == NULL || sl == NULL)
	{
		return;
	}

	if (FUNC5(sl, sizeof(IPSEC_SERVICES)) == false)
	{
		if (s->NoMoreChangeSettings)
		{
			return;
		}
	}

	FUNC6(s->LockSettings);
	{
		FUNC1(&s->Services, sl, sizeof(IPSEC_SERVICES));

		FUNC1(&s->UdpListener->ListenIP, &s->Cedar->Server->ListenIP, sizeof(IP));

		if (sl->L2TP_Raw)
		{
			FUNC0(s->UdpListener, IPSEC_PORT_L2TP);
		}
		else
		{
			FUNC2(s->UdpListener, IPSEC_PORT_L2TP);
		}

		if (sl->L2TP_IPsec || sl->EtherIP_IPsec)
		{
			FUNC0(s->UdpListener, IPSEC_PORT_IPSEC_ISAKMP);
			FUNC0(s->UdpListener, IPSEC_PORT_IPSEC_ESP_UDP);
			FUNC0(s->UdpListener, IPSEC_PORT_IPSEC_ESP_RAW);
			FUNC0(s->UdpListener, IPSEC_PORT_IPSEC_ESP_RAW_WPF);
		}
		else
		{
			FUNC2(s->UdpListener, IPSEC_PORT_IPSEC_ISAKMP);
			FUNC2(s->UdpListener, IPSEC_PORT_IPSEC_ESP_UDP);
			FUNC2(s->UdpListener, IPSEC_PORT_IPSEC_ESP_RAW);
			FUNC2(s->UdpListener, IPSEC_PORT_IPSEC_ESP_RAW_WPF);
		}

		if (FUNC4(sl->IPsec_Secret) == false)
		{
			FUNC8(s->Ike->Secret, sizeof(s->Ike->Secret), sl->IPsec_Secret);
		}

		FUNC3(s);
	}
	FUNC9(s->LockSettings);

	FUNC7(s->OsServiceCheckThreadEvent);
}