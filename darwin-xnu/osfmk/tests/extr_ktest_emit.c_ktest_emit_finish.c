
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;


 int EMIT (char*,int) ;

void
ktest_emit_finish(void) {
 char str[] = "\n[KTEST]\tFINISH\n";
 EMIT((char *)&str[0], sizeof(str)-1);
}
