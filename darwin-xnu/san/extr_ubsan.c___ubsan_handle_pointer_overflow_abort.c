
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ubsan_violation {int * member_4; struct ubsan_ptroverflow_desc* ptroverflow; int member_2; int member_1; int member_0; } ;
struct ubsan_ptroverflow_desc {int loc; } ;


 int UBSAN_POINTER_OVERFLOW ;
 int ubsan_handle (struct ubsan_violation*,int) ;

void __ubsan_handle_pointer_overflow_abort(struct ubsan_ptroverflow_desc *desc, uint64_t before, uint64_t after)
{
 struct ubsan_violation v = { UBSAN_POINTER_OVERFLOW, before, after, .ptroverflow = desc, &desc->loc };
 ubsan_handle(&v, 1);
}
