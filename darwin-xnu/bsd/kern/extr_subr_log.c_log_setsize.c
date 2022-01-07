
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_size; char* msg_bufc; int msg_bufr; int msg_bufx; } ;


 int EINVAL ;
 int ENOMEM ;
 int LOG_LOCK () ;
 int LOG_SETSIZE_DEBUG (char*,int,char*,int,int,int) ;
 int LOG_UNLOCK () ;
 int MAX_MSG_BSIZE ;
 int MIN (int,int) ;
 int bzero (char*,int) ;
 scalar_t__ kalloc (int) ;
 int kfree (char*,int) ;
 TYPE_1__* msgbufp ;
 int printf (char*,...) ;
 char* smsg_bufc ;

int
log_setsize(int size)
{
 char *new_logdata;
 int new_logsize, new_bufr, new_bufx;
 char *old_logdata;
 int old_logsize, old_bufr, old_bufx;
 int i, count;
 char *p, ch;

 if (size > MAX_MSG_BSIZE)
  return (EINVAL);

 if (size <= 0)
  return (EINVAL);

 new_logsize = size;
 if (!(new_logdata = (char*)kalloc(size))) {
  printf("log_setsize: unable to allocate memory\n");
  return (ENOMEM);
 }
 bzero(new_logdata, new_logsize);

 LOG_LOCK();

 old_logsize = msgbufp->msg_size;
 old_logdata = msgbufp->msg_bufc;
 old_bufr = msgbufp->msg_bufr;
 old_bufx = msgbufp->msg_bufx;

 LOG_SETSIZE_DEBUG("log_setsize(%d): old_logdata %p old_logsize %d old_bufr %d old_bufx %d\n",
       size, old_logdata, old_logsize, old_bufr, old_bufx);


 if (new_logsize <= old_bufx) {
  count = new_logsize;
  p = old_logdata + old_bufx - count;
 } else {




  count = MIN(new_logsize, old_logsize);
  p = old_logdata + old_logsize - (count - old_bufx);
 }
 for (i = 0; i < count; i++) {
  if (p >= old_logdata + old_logsize)
   p = old_logdata;

  ch = *p++;
  new_logdata[i] = ch;
 }

 new_bufx = i;
 if (new_bufx >= new_logsize)
  new_bufx = 0;
 msgbufp->msg_bufx = new_bufx;

 new_bufr = old_bufx - old_bufr;
 if (new_bufr < 0)
  new_bufr += old_logsize;
 new_bufr = new_bufx - new_bufr;
 if (new_bufr < 0)
  new_bufr += new_logsize;
 msgbufp->msg_bufr = new_bufr;

 msgbufp->msg_size = new_logsize;
 msgbufp->msg_bufc = new_logdata;

 LOG_SETSIZE_DEBUG("log_setsize(%d): new_logdata %p new_logsize %d new_bufr %d new_bufx %d\n",
       size, new_logdata, new_logsize, new_bufr, new_bufx);

 LOG_UNLOCK();



 bzero(old_logdata, old_logsize);
 if (old_logdata != smsg_bufc) {

  kfree(old_logdata, old_logsize);
 }

 printf("set system log size to %d bytes\n", new_logsize);

 return 0;
}
