
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {char* msg_bufc; scalar_t__ msg_bufx; scalar_t__ msg_size; } ;



void
log_putc_locked(struct msgbuf *mbp, char c)
{
 mbp->msg_bufc[mbp->msg_bufx++] = c;
 if (mbp->msg_bufx >= mbp->msg_size)
  mbp->msg_bufx = 0;
}
