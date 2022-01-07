
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct llinfo_arp {int la_holdq; } ;


 int M_WAITOK ;
 int QP_MBUF ;
 int Q_DROPHEAD ;
 int _qinit (int *,int ,scalar_t__,int ) ;
 scalar_t__ arp_maxhold ;
 int bzero (struct llinfo_arp*,int) ;
 int llinfo_arp_zone ;
 struct llinfo_arp* zalloc (int ) ;
 struct llinfo_arp* zalloc_noblock (int ) ;

__attribute__((used)) static struct llinfo_arp *
arp_llinfo_alloc(int how)
{
 struct llinfo_arp *la;

 la = (how == M_WAITOK) ? zalloc(llinfo_arp_zone) :
     zalloc_noblock(llinfo_arp_zone);
 if (la != ((void*)0)) {
  bzero(la, sizeof (*la));





  _qinit(&la->la_holdq, Q_DROPHEAD, (arp_maxhold == 0) ?
      (uint32_t)-1 : arp_maxhold, QP_MBUF);
 }

 return (la);
}
