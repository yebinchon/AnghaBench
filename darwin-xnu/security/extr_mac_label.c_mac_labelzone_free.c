
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int l_flags; } ;


 int MAC_FLAG_INITIALIZED ;
 int bzero (struct label*,int) ;
 int panic (char*) ;
 int zfree (int ,struct label*) ;
 int zone_label ;

void
mac_labelzone_free(struct label *l)
{

 if (l == ((void*)0))
  panic("Free of NULL MAC label\n");

 if ((l->l_flags & MAC_FLAG_INITIALIZED) == 0)
  panic("Free of uninitialized label\n");
 bzero(l, sizeof(struct label));
 zfree(zone_label, l);
}
