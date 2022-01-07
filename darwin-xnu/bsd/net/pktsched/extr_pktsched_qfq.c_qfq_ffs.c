
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_if {struct qfq_group** qif_groups; } ;
struct qfq_group {int dummy; } ;
typedef int pktsched_bitmap_t ;


 int QFQ_MAX_INDEX ;
 int VERIFY (int) ;
 int pktsched_ffs (int ) ;

__attribute__((used)) static inline struct qfq_group *
qfq_ffs(struct qfq_if *qif, pktsched_bitmap_t bitmap)
{
 int index = pktsched_ffs(bitmap) - 1;
 VERIFY(index >= 0 && index <= QFQ_MAX_INDEX &&
     qif->qif_groups[index] != ((void*)0));
 return (qif->qif_groups[index]);
}
