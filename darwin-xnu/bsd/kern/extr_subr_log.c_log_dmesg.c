
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint32_t ;
typedef size_t int32_t ;
struct TYPE_2__ {int msg_size; char* msg_bufc; int msg_bufx; } ;


 int ENOMEM ;
 int LOG_LOCK () ;
 int LOG_UNLOCK () ;
 int copyout (char*,int ,size_t) ;
 scalar_t__ kalloc (int) ;
 int kfree (char*,int) ;
 TYPE_1__* msgbufp ;
 int printf (char*) ;

int
log_dmesg(user_addr_t buffer, uint32_t buffersize, int32_t * retval)
{
 uint32_t i;
 uint32_t localbuff_size;
 int error = 0, newl, skip;
 char *localbuff, *p, *copystart, ch;
 size_t copysize;

 LOG_LOCK();
 localbuff_size = (msgbufp->msg_size + 2);
 LOG_UNLOCK();


 if (!(localbuff = (char *)kalloc(localbuff_size))) {
  printf("log_dmesg: unable to allocate memory\n");
  return (ENOMEM);
 }


 LOG_LOCK();





 p = msgbufp->msg_bufc + msgbufp->msg_bufx;
 for (i = newl = skip = 0; p != msgbufp->msg_bufc + msgbufp->msg_bufx - 1; ++p) {
  if (p >= msgbufp->msg_bufc + msgbufp->msg_size)
   p = msgbufp->msg_bufc;
  ch = *p;

  if (skip) {
   if (ch == '>')
    newl = skip = 0;
   continue;
  }
  if (newl && ch == '<') {
   skip = 1;
   continue;
  }
  if (ch == '\0')
   continue;
  newl = (ch == '\n');
  localbuff[i++] = ch;





  if (i == (localbuff_size - 2))
   break;
 }
 if (!newl)
  localbuff[i++] = '\n';
 localbuff[i++] = 0;

 if (buffersize >= i) {
  copystart = localbuff;
  copysize = i;
 } else {
  copystart = localbuff + i - buffersize;
  copysize = buffersize;
 }

 LOG_UNLOCK();

 error = copyout(copystart, buffer, copysize);
 if (!error)
  *retval = copysize;

 kfree(localbuff, localbuff_size);
 return (error);
}
