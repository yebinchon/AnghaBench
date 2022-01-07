
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NewCounter () ;
 int NewSk () ;
 int thread_count ;
 int thread_pool ;

void InitThreading()
{
 thread_pool = NewSk();
 thread_count = NewCounter();
}
