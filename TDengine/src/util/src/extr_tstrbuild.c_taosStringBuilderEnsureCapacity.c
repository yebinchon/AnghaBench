
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; char* buf; int jb; scalar_t__ pos; } ;
typedef TYPE_1__ SStringBuilder ;


 int longjmp (int ,int) ;
 void* realloc (char*,size_t) ;

void taosStringBuilderEnsureCapacity(SStringBuilder* sb, size_t size) {
  size += sb->pos;
  if (size > sb->size) {
    size *= 2;
    void* tmp = realloc(sb->buf, size);
    if (tmp == ((void*)0)) {
      longjmp(sb->jb, 1);
    }
    sb->buf = (char*)tmp;
    sb->size = size;
  }
}
