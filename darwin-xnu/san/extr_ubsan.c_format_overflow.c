
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubsan_violation {size_t ubsan_type; int rhs; int lhs; TYPE_1__* overflow; } ;
struct san_type_desc {char* name; int width; scalar_t__ issigned; } ;
struct TYPE_2__ {struct san_type_desc* ty; } ;


 char** overflow_str ;
 size_t snprintf (char*,size_t,char*,char*,char*,char*,int,int ,int ) ;

__attribute__((used)) static size_t
format_overflow(struct ubsan_violation *v, char *buf, size_t sz)
{
 struct san_type_desc *ty = v->overflow->ty;
 return snprintf(buf, sz,
   "%s overflow, op = %s, ty = %s, width = %d, lhs = 0x%llx, rhs = 0x%llx\n",
   ty->issigned ? "signed" : "unsigned",
   overflow_str[v->ubsan_type],
   ty->name,
   1 << ty->width,
   v->lhs,
   v->rhs
  );
}
