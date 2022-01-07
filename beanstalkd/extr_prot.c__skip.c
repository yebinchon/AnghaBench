
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_5__ {scalar_t__ in_job_read; char* reply; int reply_len; int state; scalar_t__ reply_sent; scalar_t__ in_job; } ;
typedef TYPE_1__ Conn ;


 int STATE_BITBUCKET ;
 int STATE_SEND_WORD ;
 int fill_extra_data (TYPE_1__*) ;
 int reply (TYPE_1__*,char*,int,int ) ;

__attribute__((used)) static void
_skip(Conn *c, int64 n, char *msg, int msglen)
{


    c->in_job = 0;
    c->in_job_read = n;
    fill_extra_data(c);

    if (c->in_job_read == 0) {
        reply(c, msg, msglen, STATE_SEND_WORD);
        return;
    }

    c->reply = msg;
    c->reply_len = msglen;
    c->reply_sent = 0;
    c->state = STATE_BITBUCKET;
}
