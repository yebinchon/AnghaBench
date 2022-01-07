
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG5 ;
 char* alloca (long) ;
 int elog (int ,char*,char volatile*,char volatile*,char volatile,char volatile) ;
 long max_stack_depth ;

__attribute__((used)) static void
ResizeStackToMaximumDepth(void)
{

 volatile char *stack_resizer = ((void*)0);
 long max_stack_depth_bytes = max_stack_depth * 1024L;

 stack_resizer = alloca(max_stack_depth_bytes);





 stack_resizer[0] = 0;
 stack_resizer[max_stack_depth_bytes - 1] = 0;






 elog(DEBUG5, "entry stack is at %p, increased to %p, the top and bottom values of "
     "the stack is %d and %d", &stack_resizer[0],
   &stack_resizer[max_stack_depth_bytes - 1],
   stack_resizer[max_stack_depth_bytes - 1], stack_resizer[0]);


}
