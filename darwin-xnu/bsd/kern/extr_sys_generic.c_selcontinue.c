
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEL_SECONDPASS ;
 int selprocess (int,int ) ;

int
selcontinue(int error)
{
 return selprocess(error, SEL_SECONDPASS);
}
