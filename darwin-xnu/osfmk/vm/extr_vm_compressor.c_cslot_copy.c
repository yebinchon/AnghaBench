
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* c_slot_t ;
struct TYPE_4__ {int c_codec; int c_packed_ptr; int c_size; int c_pop_cdata; int c_hash_compressed_data; int c_hash_data; } ;



__attribute__((used)) static inline void cslot_copy(c_slot_t cdst, c_slot_t csrc) {
  cdst->c_size = csrc->c_size;
  cdst->c_packed_ptr = csrc->c_packed_ptr;



}
