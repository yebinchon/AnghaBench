
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int msg_bufx; int msg_bufr; int msg_size; } ;


 int LOG_LOCK () ;
 int LOG_UNLOCK () ;
 int log_putc_locked (TYPE_1__*,char) ;
 int logwakeup (TYPE_1__*) ;
 TYPE_1__* msgbufp ;

void
log_putc(char c)
{
 int unread_count = 0;
 LOG_LOCK();
 log_putc_locked(msgbufp, c);
 unread_count = msgbufp->msg_bufx - msgbufp->msg_bufr;
 LOG_UNLOCK();

 if (unread_count < 0)
  unread_count = 0 - unread_count;
 if (c == '\n' || unread_count >= (msgbufp->msg_size / 2))
  logwakeup(msgbufp);
}
