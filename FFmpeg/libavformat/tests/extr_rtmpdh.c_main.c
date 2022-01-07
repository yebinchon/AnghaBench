
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avformat_network_init () ;
 scalar_t__ test_random_shared_secret () ;
 scalar_t__ test_ref_data () ;

int main(void)
{
    avformat_network_init();
    if (test_random_shared_secret() < 0)
        return 1;
    if (test_ref_data() < 0)
        return 1;
    return 0;
}
