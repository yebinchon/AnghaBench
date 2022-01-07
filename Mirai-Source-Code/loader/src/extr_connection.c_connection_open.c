
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int timeout; int fd; int lock; scalar_t__ echo_load_pos; int * bin; int open; int success; int state_telnet; int last_recv; scalar_t__ rdbuf_pos; } ;


 int FALSE ;
 int TELNET_CONNECTING ;
 int TRUE ;
 int printf (char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int time (int *) ;

void connection_open(struct connection *conn)
{
    pthread_mutex_lock(&conn->lock);

    conn->rdbuf_pos = 0;
    conn->last_recv = time(((void*)0));
    conn->timeout = 10;
    conn->echo_load_pos = 0;
    conn->state_telnet = TELNET_CONNECTING;
    conn->success = FALSE;
    conn->open = TRUE;
    conn->bin = ((void*)0);
    conn->echo_load_pos = 0;




    pthread_mutex_unlock(&conn->lock);
}
