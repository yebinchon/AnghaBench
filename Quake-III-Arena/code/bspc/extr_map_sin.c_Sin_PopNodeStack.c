
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* nodestack ;
 int* nodestackptr ;
 int nodestacksize ;

int Sin_PopNodeStack(void)
{

 if (nodestackptr <= nodestack) return -1;

 nodestackptr--;
 nodestacksize--;

 return *nodestackptr;
}
