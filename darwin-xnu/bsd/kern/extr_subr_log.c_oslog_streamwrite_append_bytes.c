
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int msg_bufx; int msg_size; scalar_t__ msg_bufc; } ;


 int LCK_ASSERT_OWNED ;
 int LCK_SPIN_ASSERT (int *,int ) ;
 int memcpy (void*,char const*,int) ;
 int oslog_stream_lock ;
 struct msgbuf* oslog_streambufp ;

__attribute__((used)) static void
oslog_streamwrite_append_bytes(const char *buffer, int buflen)
{
 struct msgbuf *mbp;

 LCK_SPIN_ASSERT(&oslog_stream_lock, LCK_ASSERT_OWNED);

 mbp = oslog_streambufp;

 if (mbp->msg_bufx + buflen <= mbp->msg_size) {
  memcpy((void *)(mbp->msg_bufc + mbp->msg_bufx), buffer, buflen);

  mbp->msg_bufx += buflen;
  if (mbp->msg_bufx == mbp->msg_size) {
   mbp->msg_bufx = 0;
  }
 } else {

  int bytes_left = mbp->msg_size - mbp->msg_bufx;
  memcpy((void *)(mbp->msg_bufc + mbp->msg_bufx), buffer, bytes_left);

  buflen -= bytes_left;
  buffer += bytes_left;


  memcpy((void *)mbp->msg_bufc, buffer, buflen);
  mbp->msg_bufx = buflen;
 }
 return;
}
