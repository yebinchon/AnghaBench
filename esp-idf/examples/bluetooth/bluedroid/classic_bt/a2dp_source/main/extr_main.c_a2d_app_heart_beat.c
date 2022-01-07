
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_APP_HEART_BEAT_EVT ;
 int bt_app_av_sm_hdlr ;
 int bt_app_work_dispatch (int ,int ,int *,int ,int *) ;

__attribute__((used)) static void a2d_app_heart_beat(void *arg)
{
    bt_app_work_dispatch(bt_app_av_sm_hdlr, BT_APP_HEART_BEAT_EVT, ((void*)0), 0, ((void*)0));
}
