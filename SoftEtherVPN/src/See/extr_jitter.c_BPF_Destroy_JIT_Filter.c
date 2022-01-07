
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* Function; struct TYPE_5__* mem; } ;
typedef TYPE_1__ JIT_BPF_Filter ;


 int ExFreePool (TYPE_1__*) ;
 int free (TYPE_1__*) ;

void BPF_Destroy_JIT_Filter(JIT_BPF_Filter *Filter){






 free(Filter->mem);
 free(Filter->Function);
 free(Filter);


}
