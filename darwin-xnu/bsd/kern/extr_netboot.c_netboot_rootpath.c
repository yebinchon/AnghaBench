
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {int dummy; } ;
typedef int boolean_t ;
struct TYPE_2__ {int mount_point_length; struct in_addr server_ip; int server_name; int mount_point; } ;


 int FALSE ;
 TYPE_1__* S_netboot_info_p ;
 int TRUE ;
 int printf (char*,int,int) ;
 int strlcpy (char*,int ,int) ;

boolean_t
netboot_rootpath(struct in_addr * server_ip,
   char * name, int name_len,
   char * path, int path_len)
{
    if (S_netboot_info_p == ((void*)0))
 return (FALSE);

    name[0] = '\0';
    path[0] = '\0';

    if (S_netboot_info_p->mount_point_length == 0) {
 return (FALSE);
    }
    if (path_len < S_netboot_info_p->mount_point_length) {
 printf("netboot: path too small %d < %d\n",
        path_len, S_netboot_info_p->mount_point_length);
 return (FALSE);
    }
    strlcpy(path, S_netboot_info_p->mount_point, path_len);
    strlcpy(name, S_netboot_info_p->server_name, name_len);
    *server_ip = S_netboot_info_p->server_ip;
    return (TRUE);
}
