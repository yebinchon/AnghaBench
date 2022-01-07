
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd6_prproxy_soltgt {int soltgt_key; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static __inline int
soltgt_cmp(const struct nd6_prproxy_soltgt *a,
    const struct nd6_prproxy_soltgt *b)
{
 return (memcmp(&a->soltgt_key, &b->soltgt_key, sizeof (a->soltgt_key)));
}
