
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ pos; int * buf; } ;
typedef TYPE_1__ SStringBuilder ;


 int free (int *) ;

void taosStringBuilderDestroy(SStringBuilder* sb) {
  free(sb->buf);
  sb->buf = ((void*)0);
  sb->pos = 0;
  sb->size = 0;
}
