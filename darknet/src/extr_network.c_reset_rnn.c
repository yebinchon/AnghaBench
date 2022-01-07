
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network ;


 int reset_network_state (int *,int ) ;

void reset_rnn(network *net)
{
    reset_network_state(net, 0);
}
