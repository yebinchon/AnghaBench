
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netif {int dummy; } ;
typedef int err_t ;


 scalar_t__ BBA_CID ;
 int ERR_NODEV ;
 scalar_t__ __bba_read_cid () ;
 int bba_init_one (struct netif*) ;

__attribute__((used)) static err_t bba_probe(struct netif *dev)
{
 u32 cid;
 err_t ret;

 cid = __bba_read_cid();
 if(cid!=BBA_CID) return ERR_NODEV;

 ret = bba_init_one(dev);
 return ret;
}
