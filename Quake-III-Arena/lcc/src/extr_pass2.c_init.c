
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void init(int argc, char *argv[]) {
 {extern void main_init(int, char *[]); main_init(argc, argv);}
 {extern void prof_init(int, char *[]); prof_init(argc, argv);}
 {extern void trace_init(int, char *[]); trace_init(argc, argv);}
 {extern void type_init(int, char *[]); type_init(argc, argv);}
 {extern void x86linux_init(int, char *[]); x86linux_init(argc, argv);}
}
