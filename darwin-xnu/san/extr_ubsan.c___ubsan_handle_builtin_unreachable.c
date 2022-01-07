
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsan_violation {int * member_4; struct ubsan_unreachable_desc* unreachable; int member_2; int member_1; int member_0; } ;
struct ubsan_unreachable_desc {int loc; } ;


 int UBSAN_UNREACHABLE ;
 int ubsan_handle (struct ubsan_violation*,int) ;

void
__ubsan_handle_builtin_unreachable(struct ubsan_unreachable_desc *desc)
{
 struct ubsan_violation v = { UBSAN_UNREACHABLE, 0, 0, .unreachable = desc, &desc->loc };
 ubsan_handle(&v, 1);
}
