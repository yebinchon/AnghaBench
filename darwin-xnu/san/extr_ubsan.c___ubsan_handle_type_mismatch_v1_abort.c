
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ubsan_violation {int * member_4; struct ubsan_align_desc* align; int member_2; int member_1; int member_0; } ;
struct ubsan_align_desc {int loc; } ;


 int UBSAN_ALIGN ;
 int ubsan_handle (struct ubsan_violation*,int) ;

void __ubsan_handle_type_mismatch_v1_abort(struct ubsan_align_desc *desc, uint64_t val)
{
 struct ubsan_violation v = { UBSAN_ALIGN, val, 0, .align = desc, &desc->loc };
 ubsan_handle(&v, 1);
}
