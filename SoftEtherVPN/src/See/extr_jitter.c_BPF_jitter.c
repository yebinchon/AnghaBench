
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int dummy; } ;
struct JIT_BPF_Filter {struct JIT_BPF_Filter* mem; int * Function; } ;
typedef struct JIT_BPF_Filter JIT_BPF_Filter ;
typedef struct JIT_BPF_Filter INT ;


 int BPF_MEMWORDS ;
 int * BPFtoX86 (struct bpf_insn*,struct JIT_BPF_Filter,struct JIT_BPF_Filter*) ;
 scalar_t__ ExAllocatePoolWithTag (int ,int,char) ;
 int ExFreePool (struct JIT_BPF_Filter*) ;
 int NonPagedPool ;
 int free (struct JIT_BPF_Filter*) ;
 scalar_t__ malloc (int) ;

JIT_BPF_Filter* BPF_jitter(struct bpf_insn *fp, INT nins)
{
 JIT_BPF_Filter *Filter;






 Filter=(struct JIT_BPF_Filter*)malloc(sizeof(struct JIT_BPF_Filter));

 if(Filter==((void*)0))
 {
  return ((void*)0);
 }





 Filter->mem=(INT*)malloc(BPF_MEMWORDS*sizeof(INT));

 if(Filter->mem==((void*)0))
 {



  free(Filter);

  return ((void*)0);
 }


 if((Filter->Function = BPFtoX86(fp, nins, Filter->mem))==((void*)0))
 {




  free(Filter->mem);
  free(Filter);

  return ((void*)0);
 }

 return Filter;

}
