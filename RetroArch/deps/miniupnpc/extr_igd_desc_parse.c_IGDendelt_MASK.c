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
struct IGDdatas_service {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  servicetype; } ;
struct TYPE_3__ {char* servicetype; } ;
struct IGDdatas {TYPE_2__ tmp; TYPE_1__ second; TYPE_1__ first; TYPE_1__ IPv6FC; TYPE_1__ CIF; int /*<<< orphan*/  level; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int) ; 

void FUNC3(void * d, const char * name, int l)
{
	struct IGDdatas * datas = (struct IGDdatas *)d;
	datas->level--;
	/*printf("endelt %2d %.*s\n", datas->level, l, name);*/
	if( (l==7) && !FUNC1(name, "service", l) )
	{
		if(FUNC0(datas->tmp.servicetype,
		           "urn:schemas-upnp-org:service:WANCommonInterfaceConfig:")) {
			FUNC2(&datas->CIF, &datas->tmp, sizeof(struct IGDdatas_service));
		} else if(FUNC0(datas->tmp.servicetype,
			                "urn:schemas-upnp-org:service:WANIPv6FirewallControl:")) {
			FUNC2(&datas->IPv6FC, &datas->tmp, sizeof(struct IGDdatas_service));
		} else if(FUNC0(datas->tmp.servicetype,
		                  "urn:schemas-upnp-org:service:WANIPConnection:")
		         || FUNC0(datas->tmp.servicetype,
		                    "urn:schemas-upnp-org:service:WANPPPConnection:") ) {
			if(datas->first.servicetype[0] == '\0') {
				FUNC2(&datas->first, &datas->tmp, sizeof(struct IGDdatas_service));
			} else {
				FUNC2(&datas->second, &datas->tmp, sizeof(struct IGDdatas_service));
			}
		}
	}
}