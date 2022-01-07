
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; size_t pos; } ;
typedef TYPE_1__ SStringBuilder ;


 int taosStringBuilderEnsureCapacity (TYPE_1__*,int) ;

char* taosStringBuilderGetResult(SStringBuilder* sb, size_t* len) {
  taosStringBuilderEnsureCapacity(sb, 1);
  sb->buf[sb->pos] = 0;
  if (len != ((void*)0)) {
    *len = sb->pos;
  }
  return sb->buf;
}
