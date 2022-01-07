
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef union clusterMsgData {int dummy; } clusterMsgData ;
typedef int dictEntry ;
struct TYPE_19__ {int flags; int ping_sent; int pong_received; int port; int ip; int name; int * link; } ;
typedef TYPE_5__ clusterNode ;
struct TYPE_20__ {scalar_t__ notused2; scalar_t__ notused1; void* flags; void* port; int ip; void* pong_received; void* ping_sent; int nodename; } ;
typedef TYPE_6__ clusterMsgDataGossip ;
struct TYPE_17__ {TYPE_6__* gossip; } ;
struct TYPE_18__ {TYPE_3__ ping; } ;
struct TYPE_21__ {void* totlen; void* count; TYPE_4__ data; } ;
typedef TYPE_7__ clusterMsg ;
struct TYPE_22__ {TYPE_1__* node; } ;
typedef TYPE_8__ clusterLink ;
struct TYPE_23__ {TYPE_2__* cluster; } ;
struct TYPE_16__ {int nodes; } ;
struct TYPE_15__ {int ping_sent; } ;


 int CLUSTERMSG_TYPE_PING ;
 int CLUSTER_NAMELEN ;
 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_NOADDR ;
 int CLUSTER_NODE_PFAIL ;
 int clusterBuildMessageHdr (TYPE_7__*,int) ;
 int clusterSendMessage (TYPE_8__*,unsigned char*,int) ;
 int * dictGetRandomKey (int ) ;
 TYPE_5__* dictGetVal (int *) ;
 int dictSize (int ) ;
 int floor (int) ;
 void* htonl (int) ;
 void* htons (int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int mstime () ;
 TYPE_5__* myself ;
 TYPE_9__ server ;
 unsigned char* zcalloc (int) ;
 int zfree (unsigned char*) ;

void clusterSendPing(clusterLink *link, int type) {
    unsigned char *buf;
    clusterMsg *hdr;
    int gossipcount = 0;
    int wanted;
    int totlen;




    int freshnodes = dictSize(server.cluster->nodes)-2;
    wanted = floor(dictSize(server.cluster->nodes)/10);
    if (wanted < 3) wanted = 3;
    if (wanted > freshnodes) wanted = freshnodes;




    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += (sizeof(clusterMsgDataGossip)*wanted);


    if (totlen < (int)sizeof(clusterMsg)) totlen = sizeof(clusterMsg);
    buf = zcalloc(totlen);
    hdr = (clusterMsg*) buf;


    if (link->node && type == CLUSTERMSG_TYPE_PING)
        link->node->ping_sent = mstime();
    clusterBuildMessageHdr(hdr,type);


    int maxiterations = wanted*3;
    while(freshnodes > 0 && gossipcount < wanted && maxiterations--) {
        dictEntry *de = dictGetRandomKey(server.cluster->nodes);
        clusterNode *this = dictGetVal(de);
        clusterMsgDataGossip *gossip;
        int j;



        if (this == myself) continue;


        if (maxiterations > wanted*2 &&
            !(this->flags & (CLUSTER_NODE_PFAIL|CLUSTER_NODE_FAIL)))
            continue;






        if (this->flags & (CLUSTER_NODE_HANDSHAKE|CLUSTER_NODE_NOADDR) ||
            this->link == ((void*)0))
        {
            freshnodes--;
            continue;
        }


        for (j = 0; j < gossipcount; j++) {
            if (memcmp(hdr->data.ping.gossip[j].nodename,this->name,
                    CLUSTER_NAMELEN) == 0) break;
        }
        if (j != gossipcount) continue;


        freshnodes--;
        gossip = &(hdr->data.ping.gossip[gossipcount]);
        memcpy(gossip->nodename,this->name,CLUSTER_NAMELEN);
        gossip->ping_sent = htonl(this->ping_sent);
        gossip->pong_received = htonl(this->pong_received);
        memcpy(gossip->ip,this->ip,sizeof(this->ip));
        gossip->port = htons(this->port);
        gossip->flags = htons(this->flags);
        gossip->notused1 = 0;
        gossip->notused2 = 0;
        gossipcount++;
    }



    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += (sizeof(clusterMsgDataGossip)*gossipcount);
    hdr->count = htons(gossipcount);
    hdr->totlen = htonl(totlen);
    clusterSendMessage(link,buf,totlen);
    zfree(buf);
}
