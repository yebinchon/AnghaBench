
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cs_insn ;


 int printf (char*,char*) ;
 int snprint_insn_detail (char*,size_t*,size_t*,int *) ;

__attribute__((used)) static void print_insn_detail(cs_insn *ins)
{
 char a_buf[2048];
 size_t cur=0, left=2048;
 snprint_insn_detail(a_buf, &cur, &left, ins);
 printf("%s\n", a_buf);
}
