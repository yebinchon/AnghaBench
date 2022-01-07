
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bindaddr_count; char** bindaddr; int neterr; int tcp_backlog; } ;


 int ANET_ERR ;
 int C_ERR ;
 int C_OK ;
 int LL_WARNING ;
 int anetNonBlock (int *,int) ;
 int anetTcp6Server (int ,int,char*,int ) ;
 int anetTcpServer (int ,int,char*,int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,char*,int,int ) ;
 scalar_t__ strchr (char*,char) ;

int listenToPort(int port, int *fds, int *count) {
    int j;



    if (server.bindaddr_count == 0) server.bindaddr[0] = ((void*)0);
    for (j = 0; j < server.bindaddr_count || j == 0; j++) {
        if (server.bindaddr[j] == ((void*)0)) {


            fds[*count] = anetTcp6Server(server.neterr,port,((void*)0),
                server.tcp_backlog);
            if (fds[*count] != ANET_ERR) {
                anetNonBlock(((void*)0),fds[*count]);
                (*count)++;
            }
            fds[*count] = anetTcpServer(server.neterr,port,((void*)0),
                server.tcp_backlog);
            if (fds[*count] != ANET_ERR) {
                anetNonBlock(((void*)0),fds[*count]);
                (*count)++;
            }



            if (*count) break;
        } else if (strchr(server.bindaddr[j],':')) {

            fds[*count] = anetTcp6Server(server.neterr,port,server.bindaddr[j],
                server.tcp_backlog);
        } else {

            fds[*count] = anetTcpServer(server.neterr,port,server.bindaddr[j],
                server.tcp_backlog);
        }
        if (fds[*count] == ANET_ERR) {
            serverLog(LL_WARNING,
                "Creating Server TCP listening socket %s:%d: %s",
                server.bindaddr[j] ? server.bindaddr[j] : "*",
                port, server.neterr);
            return C_ERR;
        }
        anetNonBlock(((void*)0),fds[*count]);
        (*count)++;
    }
    return C_OK;
}
