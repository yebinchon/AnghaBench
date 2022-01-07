
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int turnstile_cleanup () ;

__attribute__((used)) static void
psynch_wait_cleanup(void)
{
 turnstile_cleanup();
}
