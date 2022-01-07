
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATA_MUTEX_GIVE () ;
 int DATA_MUTEX_TAKE () ;
 int STAILQ_INIT (int *) ;
 int s_wps_rxq ;

__attribute__((used)) static void wps_rxq_init(void)
{
    DATA_MUTEX_TAKE();
    STAILQ_INIT(&s_wps_rxq);
    DATA_MUTEX_GIVE();
}
