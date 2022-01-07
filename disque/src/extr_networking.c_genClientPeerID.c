
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ip ;
struct TYPE_4__ {int flags; int fd; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {char* unixsocket; } ;


 int CLIENT_UNIX_SOCKET ;
 int C_ERR ;
 int C_OK ;
 int NET_IP_STR_LEN ;
 int anetPeerToString (int ,char*,int,int*) ;
 int formatPeerID (char*,size_t,char*,int) ;
 TYPE_2__ server ;
 int snprintf (char*,size_t,char*,char*) ;

int genClientPeerID(client *client, char *peerid, size_t peerid_len) {
    char ip[NET_IP_STR_LEN];
    int port;

    if (client->flags & CLIENT_UNIX_SOCKET) {

        snprintf(peerid,peerid_len,"%s:0",server.unixsocket);
        return C_OK;
    } else {

        int retval = anetPeerToString(client->fd,ip,sizeof(ip),&port);
        formatPeerID(peerid,peerid_len,ip,port);
        return (retval == -1) ? C_ERR : C_OK;
    }
}
