
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atop (scalar_t__) ;
 scalar_t__ avail_end ;
 scalar_t__ first_avail ;

unsigned int
pmap_free_pages(
 void)
{
 return (unsigned int)atop(avail_end - first_avail);
}
