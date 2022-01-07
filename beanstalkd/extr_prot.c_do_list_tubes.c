
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* name; } ;
typedef TYPE_2__ Tube ;
struct TYPE_10__ {int state; } ;
struct TYPE_14__ {char* body; TYPE_1__ r; } ;
struct TYPE_13__ {scalar_t__ out_job_sent; TYPE_9__* out_job; } ;
struct TYPE_12__ {size_t len; TYPE_2__** items; } ;
typedef TYPE_3__ Ms ;
typedef TYPE_4__ Conn ;


 int Copy ;
 int MSG_OUT_OF_MEMORY ;
 int STATE_SEND_JOB ;
 TYPE_9__* allocate_job (size_t) ;
 int reply_line (TYPE_4__*,int ,char*,size_t) ;
 int reply_serr (TYPE_4__*,int ) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static void
do_list_tubes(Conn *c, Ms *l)
{
    char *buf;
    Tube *t;
    size_t i, resp_z;


    resp_z = 6;
    for (i = 0; i < l->len; i++) {
        t = l->items[i];
        resp_z += 3 + strlen(t->name);
    }

    c->out_job = allocate_job(resp_z);
    if (!c->out_job) {
        reply_serr(c, MSG_OUT_OF_MEMORY);
        return;
    }


    c->out_job->r.state = Copy;


    buf = c->out_job->body;
    buf += snprintf(buf, 5, "---\n");
    for (i = 0; i < l->len; i++) {
        t = l->items[i];
        buf += snprintf(buf, 4 + strlen(t->name), "- %s\n", t->name);
    }
    buf[0] = '\r';
    buf[1] = '\n';

    c->out_job_sent = 0;
    reply_line(c, STATE_SEND_JOB, "OK %zu\r\n", resp_z - 2);
}
