
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_llreach {int lr_key; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static __inline int
iflr_cmp(const struct if_llreach *a, const struct if_llreach *b)
{
 return (memcmp(&a->lr_key, &b->lr_key, sizeof (a->lr_key)));
}
