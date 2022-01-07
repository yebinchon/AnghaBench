
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;


 int M_WAITOK ;
 void* zalloc (int ) ;
 void* zalloc_noblock (int ) ;

void *
mac_zalloc(zone_t zone, int how)
{

 if (how == M_WAITOK)
  return zalloc(zone);
 else
  return zalloc_noblock(zone);
}
