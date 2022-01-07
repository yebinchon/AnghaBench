
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ubsan_violation {int * member_4; struct ubsan_shift_desc* shift; int member_2; int member_1; int member_0; } ;
struct ubsan_shift_desc {int loc; } ;


 int UBSAN_SHIFT ;
 int ubsan_handle (struct ubsan_violation*,int) ;

void
__ubsan_handle_shift_out_of_bounds(struct ubsan_shift_desc *desc, uint64_t lhs, uint64_t rhs)
{
 struct ubsan_violation v = { UBSAN_SHIFT, lhs, rhs, .shift = desc, &desc->loc };
 ubsan_handle(&v, 0);
}
