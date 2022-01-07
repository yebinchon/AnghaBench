
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M68K_CPU_TYPE_68000 ;
 int m68k_init () ;
 int m68k_set_cpu_type (int ) ;

__attribute__((used)) static int M68KMusashiInit(void) {

   m68k_init();
   m68k_set_cpu_type(M68K_CPU_TYPE_68000);

   return 0;
}
