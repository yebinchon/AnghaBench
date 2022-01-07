
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pos; scalar_t__ buf; } ;
typedef TYPE_1__ SStringBuilder ;


 int memcpy (scalar_t__,void const*,size_t) ;
 int taosStringBuilderEnsureCapacity (TYPE_1__*,size_t) ;

void taosStringBuilderAppend(SStringBuilder* sb, const void* data, size_t len) {
  taosStringBuilderEnsureCapacity(sb, len);
  memcpy(sb->buf + sb->pos, data, len);
  sb->pos += len;
}
