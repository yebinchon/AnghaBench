
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_ALL ;
 int init_keywords () ;
 int init_now () ;
 int init_predefined_macros () ;
 int setlocale (int ,char*) ;

void cpp_init() {
    setlocale(LC_ALL, "C");
    init_keywords();
    init_now();
    init_predefined_macros();
}
