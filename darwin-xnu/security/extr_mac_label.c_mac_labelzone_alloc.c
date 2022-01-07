
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int l_flags; } ;


 int MAC_FLAG_INITIALIZED ;
 int MAC_NOWAIT ;
 int bzero (struct label*,int) ;
 scalar_t__ zalloc (int ) ;
 scalar_t__ zalloc_noblock (int ) ;
 int zone_label ;

struct label *
mac_labelzone_alloc(int flags)
{
 struct label *l;

 if (flags & MAC_NOWAIT)
  l = (struct label *) zalloc_noblock(zone_label);
 else
  l = (struct label *) zalloc(zone_label);
 if (l == ((void*)0))
  return (((void*)0));

 bzero(l, sizeof(struct label));
 l->l_flags = MAC_FLAG_INITIALIZED;
 return (l);
}
