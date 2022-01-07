
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llinfo_nd6 {int ln_lastused; int * ln_llreach; } ;


 int net_uptime () ;

void
nd6_llreach_use(struct llinfo_nd6 *ln)
{
 if (ln->ln_llreach != ((void*)0))
  ln->ln_lastused = net_uptime();
}
