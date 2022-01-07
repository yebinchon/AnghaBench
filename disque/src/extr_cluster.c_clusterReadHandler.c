
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_5__ {int totlen; int sig; } ;
typedef TYPE_1__ clusterMsg ;
struct TYPE_6__ {scalar_t__ rcvbuf; } ;
typedef TYPE_2__ clusterLink ;
typedef int buf ;
typedef int aeEventLoop ;


 unsigned int CLUSTERMSG_MIN_LEN ;
 scalar_t__ EAGAIN ;
 int LL_DEBUG ;
 int LL_WARNING ;
 int UNUSED (int) ;
 scalar_t__ clusterProcessPacket (TYPE_2__*) ;
 scalar_t__ errno ;
 int handleLinkIOError (TYPE_2__*) ;
 scalar_t__ memcmp (int ,char*,int) ;
 unsigned int ntohl (int ) ;
 int read (int,char*,unsigned int) ;
 scalar_t__ sdscatlen (scalar_t__,char*,int) ;
 scalar_t__ sdsempty () ;
 int sdsfree (scalar_t__) ;
 unsigned int sdslen (scalar_t__) ;
 int serverLog (int ,char*,...) ;
 char* strerror (scalar_t__) ;

void clusterReadHandler(aeEventLoop *el, int fd, void *privdata, int mask) {
    char buf[sizeof(clusterMsg)];
    ssize_t nread;
    clusterMsg *hdr;
    clusterLink *link = (clusterLink*) privdata;
    unsigned int readlen, rcvbuflen;
    UNUSED(el);
    UNUSED(mask);

    while(1) {
        rcvbuflen = sdslen(link->rcvbuf);
        if (rcvbuflen < 8) {


            readlen = 8 - rcvbuflen;
        } else {

            hdr = (clusterMsg*) link->rcvbuf;
            if (rcvbuflen == 8) {


                if (memcmp(hdr->sig,"DbuZ",4) != 0 ||
                    ntohl(hdr->totlen) < CLUSTERMSG_MIN_LEN)
                {
                    serverLog(LL_WARNING,
                        "Bad message length or signature received "
                        "from Cluster bus.");
                    handleLinkIOError(link);
                    return;
                }
            }
            readlen = ntohl(hdr->totlen) - rcvbuflen;
            if (readlen > sizeof(buf)) readlen = sizeof(buf);
        }

        nread = read(fd,buf,readlen);
        if (nread == -1 && errno == EAGAIN) return;

        if (nread <= 0) {

            serverLog(LL_DEBUG,"I/O error reading from node link: %s",
                (nread == 0) ? "connection closed" : strerror(errno));
            handleLinkIOError(link);
            return;
        } else {

            link->rcvbuf = sdscatlen(link->rcvbuf,buf,nread);
            hdr = (clusterMsg*) link->rcvbuf;
            rcvbuflen += nread;
        }


        if (rcvbuflen >= 8 && rcvbuflen == ntohl(hdr->totlen)) {
            if (clusterProcessPacket(link)) {
                sdsfree(link->rcvbuf);
                link->rcvbuf = sdsempty();
            } else {
                return;
            }
        }
    }
}
