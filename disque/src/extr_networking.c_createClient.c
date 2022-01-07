
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int queues; int * job; scalar_t__ flags; scalar_t__ timeout; } ;
struct TYPE_10__ {int fd; int bulklen; int * peerid; TYPE_1__ bpop; int btype; int reply; scalar_t__ obuf_soft_limit_reached_time; scalar_t__ reply_bytes; scalar_t__ authenticated; int lastinteraction; int ctime; scalar_t__ flags; scalar_t__ sentlen; scalar_t__ multibulklen; int * lastcmd; int cmd; int * argv; scalar_t__ argc; scalar_t__ reqtype; scalar_t__ querybuf_peak; int querybuf; scalar_t__ bufpos; int * name; scalar_t__ id; } ;
typedef TYPE_2__ client ;
struct TYPE_11__ {int clients; int unixtime; int next_client_id; int el; scalar_t__ tcpkeepalive; } ;


 scalar_t__ AE_ERR ;
 int AE_READABLE ;
 int BLOCKED_NONE ;
 scalar_t__ aeCreateFileEvent (int ,int,int ,int ,TYPE_2__*) ;
 int anetEnableTcpNoDelay (int *,int) ;
 int anetKeepAlive (int *,int,scalar_t__) ;
 int anetNonBlock (int *,int) ;
 int close (int) ;
 int dictCreate (int *,int *) ;
 int dupClientReplyValue ;
 int freeClientReplyValue ;
 int listAddNodeTail (int ,TYPE_2__*) ;
 int listCreate () ;
 int listSetDupMethod (int ,int ) ;
 int listSetFreeMethod (int ,int ) ;
 int readQueryFromClient ;
 int sdsempty () ;
 TYPE_5__ server ;
 int setDictType ;
 int zfree (TYPE_2__*) ;
 TYPE_2__* zmalloc (int) ;

client *createClient(int fd) {
    client *c = zmalloc(sizeof(client));





    if (fd != -1) {
        anetNonBlock(((void*)0),fd);
        anetEnableTcpNoDelay(((void*)0),fd);
        if (server.tcpkeepalive)
            anetKeepAlive(((void*)0),fd,server.tcpkeepalive);
        if (aeCreateFileEvent(server.el,fd,AE_READABLE,
            readQueryFromClient, c) == AE_ERR)
        {
            close(fd);
            zfree(c);
            return ((void*)0);
        }
    }

    c->id = server.next_client_id++;
    c->fd = fd;
    c->name = ((void*)0);
    c->bufpos = 0;
    c->querybuf = sdsempty();
    c->querybuf_peak = 0;
    c->reqtype = 0;
    c->argc = 0;
    c->argv = ((void*)0);
    c->cmd = c->lastcmd = ((void*)0);
    c->multibulklen = 0;
    c->bulklen = -1;
    c->sentlen = 0;
    c->flags = 0;
    c->ctime = c->lastinteraction = server.unixtime;
    c->authenticated = 0;
    c->reply = listCreate();
    c->reply_bytes = 0;
    c->obuf_soft_limit_reached_time = 0;
    listSetFreeMethod(c->reply,freeClientReplyValue);
    listSetDupMethod(c->reply,dupClientReplyValue);
    c->btype = BLOCKED_NONE;
    c->bpop.timeout = 0;
    c->bpop.flags = 0;
    c->bpop.job = ((void*)0);
    c->bpop.queues = dictCreate(&setDictType,((void*)0));
    c->peerid = ((void*)0);
    if (fd != -1) listAddNodeTail(server.clients,c);
    return c;
}
