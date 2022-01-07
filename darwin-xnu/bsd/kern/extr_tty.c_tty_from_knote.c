
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct knote {scalar_t__ kn_hook; } ;



__attribute__((used)) static struct tty *
tty_from_knote(struct knote *kn)
{
 return (struct tty *)kn->kn_hook;
}
