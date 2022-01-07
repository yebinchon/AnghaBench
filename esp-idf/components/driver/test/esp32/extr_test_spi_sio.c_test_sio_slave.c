
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_sio_slave_round (int) ;
 int unity_wait_for_signal (char*) ;

void test_sio_slave(void)
{
    test_sio_slave_round(1);
    unity_wait_for_signal("master ready");
    test_sio_slave_round(0);
}
