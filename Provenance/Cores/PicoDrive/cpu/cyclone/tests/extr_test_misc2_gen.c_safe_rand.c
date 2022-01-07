
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int op_check (unsigned short) ;
 unsigned short rand () ;

__attribute__((used)) static unsigned short safe_rand(void)
{
 unsigned short op;


 do
 {
  op = rand();
 }
 while (!op_check(op));

 return op;
}
