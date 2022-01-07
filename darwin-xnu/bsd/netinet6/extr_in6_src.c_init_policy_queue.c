
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_INIT (int *) ;
 int addrsel_policytab ;

__attribute__((used)) static void
init_policy_queue(void)
{
 TAILQ_INIT(&addrsel_policytab);
}
