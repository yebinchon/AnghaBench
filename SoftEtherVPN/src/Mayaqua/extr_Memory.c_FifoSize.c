
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int size; } ;
typedef TYPE_1__ FIFO ;



UINT FifoSize(FIFO *f)
{

 if (f == ((void*)0))
 {
  return 0;
 }

 return f->size;
}
