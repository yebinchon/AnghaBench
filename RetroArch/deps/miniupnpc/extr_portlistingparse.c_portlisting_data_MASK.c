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
struct PortMappingParserData {int curelt; struct PortMapping* l_head; } ;
struct PortMapping {char* remoteHost; unsigned short externalPort; char* protocol; unsigned short internalPort; char* internalClient; unsigned char enabled; char* description; scalar_t__ leaseTime; } ;

/* Variables and functions */
#define  NewDescription 135 
#define  NewEnabled 134 
#define  NewExternalPort 133 
#define  NewInternalClient 132 
#define  NewInternalPort 131 
#define  NewLeaseTime 130 
#define  NewProtocol 129 
#define  NewRemoteHost 128 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (char const*,int) ; 

__attribute__((used)) static void FUNC2(void * d, const char * data, int l)
{
	struct PortMapping * pm;
	struct PortMappingParserData * pdata = (struct PortMappingParserData *)d;
	pm = pdata->l_head;
	if(!pm)
		return;
	if(l > 63)
		l = 63;
	switch(pdata->curelt)
	{
	case NewRemoteHost:
		FUNC0(pm->remoteHost, data, l);
		pm->remoteHost[l] = '\0';
		break;
	case NewExternalPort:
		pm->externalPort = (unsigned short)FUNC1(data, l);
		break;
	case NewProtocol:
		if(l > 3)
			l = 3;
		FUNC0(pm->protocol, data, l);
		pm->protocol[l] = '\0';
		break;
	case NewInternalPort:
		pm->internalPort = (unsigned short)FUNC1(data, l);
		break;
	case NewInternalClient:
		FUNC0(pm->internalClient, data, l);
		pm->internalClient[l] = '\0';
		break;
	case NewEnabled:
		pm->enabled = (unsigned char)FUNC1(data, l);
		break;
	case NewDescription:
		FUNC0(pm->description, data, l);
		pm->description[l] = '\0';
		break;
	case NewLeaseTime:
		pm->leaseTime = FUNC1(data, l);
		break;
	default:
		break;
	}
}