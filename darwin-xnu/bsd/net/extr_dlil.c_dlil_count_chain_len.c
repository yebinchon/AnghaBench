
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct chain_len_stats {int cls_five_or_more; int cls_four; int cls_three; int cls_two; int cls_one; } ;
typedef TYPE_1__* mbuf_t ;
struct TYPE_3__ {struct TYPE_3__* m_next; } ;


 int atomic_add_64 (int *,int) ;

__attribute__((used)) static void
dlil_count_chain_len(mbuf_t m, struct chain_len_stats *cls)
{
 mbuf_t n = m;
 int chainlen = 0;

 while (n != ((void*)0)) {
  chainlen++;
  n = n->m_next;
 }
 switch (chainlen) {
  case 0:
   break;
  case 1:
   atomic_add_64(&cls->cls_one, 1);
   break;
  case 2:
   atomic_add_64(&cls->cls_two, 1);
   break;
  case 3:
   atomic_add_64(&cls->cls_three, 1);
   break;
  case 4:
   atomic_add_64(&cls->cls_four, 1);
   break;
  case 5:
  default:
   atomic_add_64(&cls->cls_five_or_more, 1);
   break;
 }
}
