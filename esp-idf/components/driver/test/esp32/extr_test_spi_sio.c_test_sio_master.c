
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_sio_master_round (int) ;
 int unity_send_signal (char*) ;

void test_sio_master(void)
{
    test_sio_master_round(1);
    unity_send_signal("master ready");
    test_sio_master_round(0);
}
