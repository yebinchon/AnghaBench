
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubsan_violation {TYPE_1__* align; int lhs; } ;
struct san_type_desc {char* name; } ;
struct TYPE_2__ {size_t kind; int align; struct san_type_desc* ty; } ;


 char** align_kinds ;
 scalar_t__ snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static size_t
format_alignment(struct ubsan_violation *v, char *buf, size_t sz)
{
 size_t n = 0;
 struct san_type_desc *ty = v->align->ty;

 n += snprintf(buf+n, sz-n, "mis-aligned %s of 0x%llx\n", align_kinds[v->align->kind], v->lhs);
 n += snprintf(buf+n, sz-n, "  expected %d-byte alignment, type = %s\n",
   1 << v->align->align, ty->name);
 return n;
}
