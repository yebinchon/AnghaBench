
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ubsan_violation {int * member_4; struct ubsan_oob_desc* oob; int member_2; int member_1; int member_0; } ;
struct ubsan_oob_desc {int loc; } ;


 int UBSAN_OOB ;
 int ubsan_handle (struct ubsan_violation*,int) ;

void __ubsan_handle_out_of_bounds_abort(struct ubsan_oob_desc *desc, uint64_t idx)
{
 struct ubsan_violation v = { UBSAN_OOB, idx, 0, .oob = desc, &desc->loc };
 ubsan_handle(&v, 1);
}
