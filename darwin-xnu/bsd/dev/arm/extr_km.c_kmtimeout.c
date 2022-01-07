
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int kmoutput (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static void
kmtimeout(void *arg)
{
 struct tty *tp = (struct tty *)arg;

 tty_lock(tp);
 (void)kmoutput(tp);
 tty_unlock(tp);
}
