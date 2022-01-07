
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_exclusive () ;

__attribute__((used)) static void
atomic_exchange_abort(void)
{
 clear_exclusive();
}
