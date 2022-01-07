
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_4__ {char** offset; } ;
struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ SData ;
typedef TYPE_2__ SCacheBlock ;



__attribute__((used)) static char *doGetDataBlockImpl(const char *sdata, int32_t colIdx, bool isDiskFileBlock) {
  if (isDiskFileBlock) {
    return ((SData **)sdata)[colIdx]->data;
  } else {
    return ((SCacheBlock *)sdata)->offset[colIdx];
  }
}
