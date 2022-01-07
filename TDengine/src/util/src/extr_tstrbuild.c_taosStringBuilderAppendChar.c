
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; int pos; } ;
typedef TYPE_1__ SStringBuilder ;


 int taosStringBuilderEnsureCapacity (TYPE_1__*,int) ;

void taosStringBuilderAppendChar(SStringBuilder* sb, char c) {
  taosStringBuilderEnsureCapacity(sb, 1);
  sb->buf[sb->pos++] = c;
}
