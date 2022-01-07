
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nodestack ;
 int nodestackptr ;
 scalar_t__ nodestacksize ;

void Q2_InitNodeStack(void)
{
 nodestackptr = nodestack;
 nodestacksize = 0;
}
