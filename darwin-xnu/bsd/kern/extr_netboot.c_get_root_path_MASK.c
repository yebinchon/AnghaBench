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
struct dhcp {int dummy; } ;
typedef  int /*<<< orphan*/  dhcpol_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOOTP_RESPONSE ; 
 int /*<<< orphan*/  BSDP_RESPONSE ; 
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (char*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dhcp const*,int) ; 
 int /*<<< orphan*/  dhcptag_root_path_e ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static boolean_t
FUNC7(char * root_path)
{
    void *		entry;
    boolean_t		found = FALSE;
    const void *	pkt;
    int			pkt_len;
    
    entry = FUNC0("/chosen");
    if (entry == NULL) {
	return (FALSE);
    }
    pkt = FUNC1(entry, BSDP_RESPONSE, &pkt_len);
    if (pkt != NULL && pkt_len >= (int)sizeof(struct dhcp)) {
	FUNC6("netboot: retrieving root path from BSDP response\n");
    }
    else {
	pkt = FUNC1(entry, BOOTP_RESPONSE, 
					&pkt_len);
	if (pkt != NULL && pkt_len >= (int)sizeof(struct dhcp)) {
	    FUNC6("netboot: retrieving root path from BOOTP response\n");
	}
    }
    if (pkt != NULL) {
	int			len;
	dhcpol_t 		options;
	const char *		path;
	const struct dhcp *	reply;

	reply = (const struct dhcp *)pkt;
	(void)FUNC4(&options, reply, pkt_len);

	path = (const char *)FUNC3(&options, 
					 dhcptag_root_path_e, &len, NULL);
	if (path) {
	    FUNC5(root_path, path, len);
	    root_path[len] = '\0';
	    found = TRUE;
	}
    }
    FUNC2(entry);
    return (found);

}