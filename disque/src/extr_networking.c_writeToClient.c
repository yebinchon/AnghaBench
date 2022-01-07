
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef scalar_t__ sds ;
struct TYPE_6__ {scalar_t__ bufpos; scalar_t__ sentlen; size_t reply_bytes; int flags; int fd; int lastinteraction; int reply; scalar_t__ buf; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {scalar_t__ maxmemory; int el; int unixtime; int stat_net_output_bytes; } ;


 int AE_WRITABLE ;
 int CLIENT_CLOSE_AFTER_REPLY ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ EAGAIN ;
 int LL_VERBOSE ;
 scalar_t__ NET_MAX_WRITES_PER_EVENT ;
 int aeDeleteFileEvent (int ,int ,int ) ;
 scalar_t__ clientHasPendingReplies (TYPE_1__*) ;
 scalar_t__ errno ;
 int freeClient (TYPE_1__*) ;
 int listDelNode (int ,int ) ;
 int listFirst (int ) ;
 scalar_t__ listNodeValue (int ) ;
 size_t sdslen (scalar_t__) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,int ) ;
 int strerror (scalar_t__) ;
 scalar_t__ write (int,scalar_t__,size_t) ;
 scalar_t__ zmalloc_used_memory () ;

int writeToClient(int fd, client *c, int handler_installed) {
    ssize_t nwritten = 0, totwritten = 0;
    size_t objlen;
    sds o;

    while(clientHasPendingReplies(c)) {
        if (c->bufpos > 0) {
            nwritten = write(fd,c->buf+c->sentlen,c->bufpos-c->sentlen);
            if (nwritten <= 0) break;
            c->sentlen += nwritten;
            totwritten += nwritten;



            if (c->sentlen == c->bufpos) {
                c->bufpos = 0;
                c->sentlen = 0;
            }
        } else {
            o = listNodeValue(listFirst(c->reply));
            objlen = sdslen(o);

            if (objlen == 0) {
                listDelNode(c->reply,listFirst(c->reply));
                continue;
            }

            nwritten = write(fd, o + c->sentlen, objlen - c->sentlen);
            if (nwritten <= 0) break;
            c->sentlen += nwritten;
            totwritten += nwritten;


            if (c->sentlen == objlen) {
                listDelNode(c->reply,listFirst(c->reply));
                c->sentlen = 0;
                c->reply_bytes -= objlen;
            }
        }
        server.stat_net_output_bytes += totwritten;
        if (totwritten > NET_MAX_WRITES_PER_EVENT &&
            (server.maxmemory == 0 ||
             zmalloc_used_memory() < server.maxmemory)) break;
    }
    if (nwritten == -1) {
        if (errno == EAGAIN) {
            nwritten = 0;
        } else {
            serverLog(LL_VERBOSE,
                "Error writing to client: %s", strerror(errno));
            freeClient(c);
            return C_ERR;
        }
    }
    if (totwritten > 0) c->lastinteraction = server.unixtime;
    if (!clientHasPendingReplies(c)) {
        c->sentlen = 0;
        if (handler_installed) aeDeleteFileEvent(server.el,c->fd,AE_WRITABLE);


        if (c->flags & CLIENT_CLOSE_AFTER_REPLY) {
            freeClient(c);
            return C_ERR;
        }
    }
    return C_OK;
}
