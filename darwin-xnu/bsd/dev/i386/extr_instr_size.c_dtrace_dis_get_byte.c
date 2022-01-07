
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;



__attribute__((used)) static int
dtrace_dis_get_byte(void *p)
{
 int ret;
 uchar_t **instr = p;

 ret = **instr;
 *instr += 1;

 return (ret);
}
