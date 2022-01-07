
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbuf_worker_ready ;
 int mbuf_worker_thread () ;

__attribute__((used)) __attribute__((noreturn))
static void
mbuf_worker_thread_init(void)
{
 mbuf_worker_ready++;
 mbuf_worker_thread();
}
