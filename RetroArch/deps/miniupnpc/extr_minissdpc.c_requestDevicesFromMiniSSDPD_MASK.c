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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned char*) ; 
 int MINISSDPC_INVALID_INPUT ; 
 int MINISSDPC_SOCKET_ERROR ; 
 int MINISSDPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int,unsigned char*,int) ; 

int
FUNC7(int s, const char * devtype)
{
	unsigned char buffer[256];
	unsigned char * p;
	unsigned int l;
	unsigned stsize = (unsigned)FUNC5(devtype);
	if(stsize == 8 && 0 == FUNC2(devtype, "ssdp:all", 8))
	{
		buffer[0] = 3;	/* request type 3 : everything */
	}
	else
	{
		buffer[0] = 1; /* request type 1 : request devices/services by type */
	}
	p = buffer + 1;
	l = stsize;	FUNC0(l, p);
	if(p + stsize > buffer + sizeof(buffer))
	{
		/* devtype is too long ! */
#ifdef DEBUG
		fprintf(stderr, "devtype is too long ! stsize=%u sizeof(buffer)=%u\n",
		        stsize, (unsigned)sizeof(buffer));
#endif /* DEBUG */
		return MINISSDPC_INVALID_INPUT;
	}
	FUNC3(p, devtype, stsize);
	p += stsize;
	if(FUNC6(s, buffer, p - buffer) < 0)
	{
		/*syslog(LOG_ERR, "write(): %m");*/
		FUNC4("minissdpc.c: write()");
		return MINISSDPC_SOCKET_ERROR;
	}
	return MINISSDPC_SUCCESS;
}