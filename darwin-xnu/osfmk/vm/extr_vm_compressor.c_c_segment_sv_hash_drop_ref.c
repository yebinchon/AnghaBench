
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c_sv_hash_entry {scalar_t__ he_ref; scalar_t__ he_record; int he_data; } ;
typedef int UInt64 ;
struct TYPE_2__ {scalar_t__ he_record; } ;


 int OSAddAtomic (int,int *) ;
 scalar_t__ OSCompareAndSwap64 (int ,int ,int *) ;
 scalar_t__ TRUE ;
 TYPE_1__* c_segment_sv_hash_table ;
 int c_segment_svp_in_hash ;

__attribute__((used)) static void
c_segment_sv_hash_drop_ref(int hash_indx)
{
 struct c_sv_hash_entry o_sv_he, n_sv_he;

 while (1) {

  o_sv_he.he_record = c_segment_sv_hash_table[hash_indx].he_record;

  n_sv_he.he_ref = o_sv_he.he_ref - 1;
  n_sv_he.he_data = o_sv_he.he_data;

  if (OSCompareAndSwap64((UInt64)o_sv_he.he_record, (UInt64)n_sv_he.he_record, (UInt64 *) &c_segment_sv_hash_table[hash_indx].he_record) == TRUE) {
   if (n_sv_he.he_ref == 0)
    OSAddAtomic(-1, &c_segment_svp_in_hash);
   break;
  }
 }
}
