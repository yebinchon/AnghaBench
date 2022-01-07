
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_rx_param {int dummy; } ;


 int DATA_MUTEX_GIVE () ;
 int DATA_MUTEX_TAKE () ;
 int STAILQ_INSERT_TAIL (int *,struct wps_rx_param*,int ) ;
 int bqentry ;
 int s_wps_rxq ;

__attribute__((used)) static void wps_rxq_enqueue(struct wps_rx_param *param)
{
    DATA_MUTEX_TAKE();
    STAILQ_INSERT_TAIL(&s_wps_rxq,param, bqentry);
    DATA_MUTEX_GIVE();
}
