
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llinfo_arp {int la_lastused; int * la_llreach; } ;


 int net_uptime () ;

__attribute__((used)) static __inline void
arp_llreach_use(struct llinfo_arp *la)
{
 if (la->la_llreach != ((void*)0))
  la->la_lastused = net_uptime();
}
