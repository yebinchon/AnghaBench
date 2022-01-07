
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_4__ {int end; int start; } ;
struct TYPE_3__ {int end; int start; } ;
struct secpolicyindex {scalar_t__ prefs; scalar_t__ prefd; scalar_t__ ul_proto; scalar_t__ internal_if; TYPE_2__ dst_range; TYPE_1__ src_range; int dst; int src; } ;


 scalar_t__ key_sockaddrcmp (struct sockaddr*,struct sockaddr*,int) ;

__attribute__((used)) static int
key_cmpspidx_exactly(
      struct secpolicyindex *spidx0,
      struct secpolicyindex *spidx1)
{

 if (spidx0 == ((void*)0) && spidx1 == ((void*)0))
  return 1;

 if (spidx0 == ((void*)0) || spidx1 == ((void*)0))
  return 0;

 if (spidx0->prefs != spidx1->prefs
  || spidx0->prefd != spidx1->prefd
  || spidx0->ul_proto != spidx1->ul_proto
  || spidx0->internal_if != spidx1->internal_if)
  return 0;

 if (key_sockaddrcmp((struct sockaddr *)&spidx0->src,
      (struct sockaddr *)&spidx1->src, 1) != 0) {
  return 0;
 }
 if (key_sockaddrcmp((struct sockaddr *)&spidx0->dst,
      (struct sockaddr *)&spidx1->dst, 1) != 0) {
  return 0;
 }

    if (key_sockaddrcmp((struct sockaddr *)&spidx0->src_range.start,
      (struct sockaddr *)&spidx1->src_range.start, 1) != 0) {
  return 0;
 }
    if (key_sockaddrcmp((struct sockaddr *)&spidx0->src_range.end,
      (struct sockaddr *)&spidx1->src_range.end, 1) != 0) {
  return 0;
 }
 if (key_sockaddrcmp((struct sockaddr *)&spidx0->dst_range.start,
      (struct sockaddr *)&spidx1->dst_range.start, 1) != 0) {
  return 0;
 }
    if (key_sockaddrcmp((struct sockaddr *)&spidx0->dst_range.end,
      (struct sockaddr *)&spidx1->dst_range.end, 1) != 0) {
  return 0;
 }

 return 1;
}
