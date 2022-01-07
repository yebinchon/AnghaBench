
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct knote {int dummy; } ;


 struct tty* tty_from_knote (struct knote*) ;
 int tty_lock (struct tty*) ;

__attribute__((used)) __attribute__((warn_unused_result))
static struct tty *
tty_lock_from_knote(struct knote *kn)
{
 struct tty *tp = tty_from_knote(kn);
 if (tp) {
  tty_lock(tp);
 }

 return tp;
}
