
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct label {int dummy; } ;
typedef int proc_t ;
typedef int dev_t ;


 int MAC_PERFORM (int ,int ,struct tty*,int ,struct label*) ;
 int pty_notify_close ;

void
mac_pty_notify_close(proc_t p, struct tty *tp, dev_t dev, struct label *label) {
 MAC_PERFORM(pty_notify_close, p, tp, dev, label);
}
