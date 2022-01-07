
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encaptab {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct encaptab*,int ) ;
 int chain ;
 int encaptab ;

__attribute__((used)) static void
encap_add(struct encaptab *ep)
{
 LIST_INSERT_HEAD(&encaptab, ep, chain);
}
