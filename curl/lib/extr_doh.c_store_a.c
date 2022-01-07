
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dohentry {size_t numaddr; struct dohaddr* addr; } ;
struct TYPE_2__ {int v4; } ;
struct dohaddr {TYPE_1__ ip; int type; } ;
typedef int DOHcode ;


 int DNS_TYPE_A ;
 size_t DOH_MAX_ADDR ;
 int DOH_OK ;
 int memcpy (int *,unsigned char*,int) ;

__attribute__((used)) static DOHcode store_a(unsigned char *doh, int index, struct dohentry *d)
{

  if(d->numaddr < DOH_MAX_ADDR) {
    struct dohaddr *a = &d->addr[d->numaddr];
    a->type = DNS_TYPE_A;
    memcpy(&a->ip.v4, &doh[index], 4);
    d->numaddr++;
  }
  return DOH_OK;
}
