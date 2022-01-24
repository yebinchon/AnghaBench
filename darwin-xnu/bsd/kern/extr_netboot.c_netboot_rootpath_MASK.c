#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int mount_point_length; struct in_addr server_ip; int /*<<< orphan*/  server_name; int /*<<< orphan*/  mount_point; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* S_netboot_info_p ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

boolean_t
FUNC2(struct in_addr * server_ip,
		 char * name, int name_len, 
		 char * path, int path_len)
{
    if (S_netboot_info_p == NULL)
	return (FALSE);

    name[0] = '\0';
    path[0] = '\0';

    if (S_netboot_info_p->mount_point_length == 0) {
	return (FALSE);
    }
    if (path_len < S_netboot_info_p->mount_point_length) {
	FUNC0("netboot: path too small %d < %d\n",
	       path_len, S_netboot_info_p->mount_point_length);
	return (FALSE);
    }
    FUNC1(path, S_netboot_info_p->mount_point, path_len);
    FUNC1(name, S_netboot_info_p->server_name, name_len);
    *server_ip = S_netboot_info_p->server_ip;
    return (TRUE);
}