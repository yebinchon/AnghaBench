
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int peerid ;
struct TYPE_4__ {char* peerid; } ;
typedef TYPE_1__ client ;


 int NET_PEER_ID_LEN ;
 int genClientPeerID (TYPE_1__*,char*,int) ;
 char* sdsnew (char*) ;

char *getClientPeerId(client *c) {
    char peerid[NET_PEER_ID_LEN];

    if (c->peerid == ((void*)0)) {
        genClientPeerID(c,peerid,sizeof(peerid));
        c->peerid = sdsnew(peerid);
    }
    return c->peerid;
}
