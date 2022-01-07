
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int caddr_t ;
struct TYPE_2__ {int sc_state; int sc_selp; } ;


 int LCK_ASSERT_OWNED ;
 int LCK_SPIN_ASSERT (int *,int ) ;
 int LOG_RDWAIT ;
 int oslog_stream_lock ;
 int oslog_stream_open ;
 scalar_t__ oslog_streambufp ;
 TYPE_1__ oslog_streamsoftc ;
 int selwakeup (int *) ;
 int wakeup (int ) ;

__attribute__((used)) static void
oslog_streamwakeup_locked(void)
{
 LCK_SPIN_ASSERT(&oslog_stream_lock, LCK_ASSERT_OWNED);
 if (!oslog_stream_open) {
  return;
 }
 selwakeup(&oslog_streamsoftc.sc_selp);
 if (oslog_streamsoftc.sc_state & LOG_RDWAIT) {
  wakeup((caddr_t)oslog_streambufp);
  oslog_streamsoftc.sc_state &= ~LOG_RDWAIT;
 }
}
