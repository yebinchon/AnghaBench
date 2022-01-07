
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __appExit () ;
 int __libc_fini_array () ;
 int __libctru_exit (int) ;

void __attribute__((noreturn)) __ctru_exit(int rc)
{
   __libc_fini_array();
   __appExit();
   __libctru_exit(rc);
}
