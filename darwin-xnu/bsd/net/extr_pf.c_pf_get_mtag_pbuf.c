
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_mtag {int dummy; } ;
typedef int pbuf_t ;


 struct pf_mtag* pf_find_mtag_pbuf (int *) ;

struct pf_mtag *
pf_get_mtag_pbuf(pbuf_t *pbuf)
{
 return (pf_find_mtag_pbuf(pbuf));
}
