
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int boolean_t ;


 int thread_should_halt_fast (int ) ;

boolean_t
thread_should_halt(
 thread_t th)
{
 return (thread_should_halt_fast(th));
}
