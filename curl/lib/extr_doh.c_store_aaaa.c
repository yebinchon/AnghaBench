
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dohentry {size_t numaddr; struct dohaddr* addr; } ;
struct TYPE_2__ {int v6; } ;
struct dohaddr {TYPE_1__ ip; int type; } ;
typedef int DOHcode ;


 int DNS_TYPE_AAAA ;
 size_t DOH_MAX_ADDR ;
 int DOH_OK ;
 int memcpy (int *,unsigned char*,int) ;

__attribute__((used)) static DOHcode store_aaaa(unsigned char *doh, int index, struct dohentry *d)
{

  if(d->numaddr < DOH_MAX_ADDR) {
    struct dohaddr *a = &d->addr[d->numaddr];
    a->type = DNS_TYPE_AAAA;
    memcpy(&a->ip.v6, &doh[index], 16);
    d->numaddr++;
  }
  return DOH_OK;
}
