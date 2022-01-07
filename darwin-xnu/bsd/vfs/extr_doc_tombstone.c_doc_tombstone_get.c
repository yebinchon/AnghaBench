
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {struct doc_tombstone* t_tombstone; } ;
struct doc_tombstone {int dummy; } ;


 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;
 struct doc_tombstone* kalloc (int) ;
 int memset (struct doc_tombstone*,int ,int) ;

struct doc_tombstone *
doc_tombstone_get(void)
{
 struct uthread *ut;
 ut = get_bsdthread_info(current_thread());

 if (ut->t_tombstone == ((void*)0)) {
  ut->t_tombstone = kalloc(sizeof(struct doc_tombstone));
  if (ut->t_tombstone) {
   memset(ut->t_tombstone, 0, sizeof(struct doc_tombstone));
  }
 }

 return ut->t_tombstone;
}
