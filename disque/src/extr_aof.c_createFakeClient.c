
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int fd; int reply; int * peerid; scalar_t__ obuf_soft_limit_reached_time; scalar_t__ reply_bytes; int btype; int flags; scalar_t__ bufpos; int * argv; scalar_t__ argc; scalar_t__ querybuf_peak; int querybuf; int * name; } ;


 int BLOCKED_NONE ;
 int CLIENT_AOF_CLIENT ;
 int decrRefCountVoid ;
 int dupClientReplyValue ;
 int listCreate () ;
 int listSetDupMethod (int ,int ) ;
 int listSetFreeMethod (int ,int ) ;
 int sdsempty () ;
 struct client* zmalloc (int) ;

struct client *createFakeClient(void) {
    struct client *c = zmalloc(sizeof(*c));

    c->fd = -1;
    c->name = ((void*)0);
    c->querybuf = sdsempty();
    c->querybuf_peak = 0;
    c->argc = 0;
    c->argv = ((void*)0);
    c->bufpos = 0;
    c->flags = CLIENT_AOF_CLIENT;
    c->btype = BLOCKED_NONE;
    c->reply = listCreate();
    c->reply_bytes = 0;
    c->obuf_soft_limit_reached_time = 0;
    c->peerid = ((void*)0);
    listSetFreeMethod(c->reply,decrRefCountVoid);
    listSetDupMethod(c->reply,dupClientReplyValue);
    return c;
}
