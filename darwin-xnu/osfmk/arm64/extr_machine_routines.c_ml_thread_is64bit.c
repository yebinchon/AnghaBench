
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int boolean_t ;


 int thread_is_64bit_addr (int ) ;

boolean_t ml_thread_is64bit(thread_t thread) {
 return (thread_is_64bit_addr(thread));
}
