
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int CALLSTACK_DATA ;


 int GetCallStackStr (char*,int,int *) ;
 int MAX_SIZE ;
 int Print (char*,char*) ;

void PrintCallStack(CALLSTACK_DATA *s)
{
 char tmp[MAX_SIZE * 2];

 GetCallStackStr(tmp, sizeof(tmp), s);
 Print("%s", tmp);
}
