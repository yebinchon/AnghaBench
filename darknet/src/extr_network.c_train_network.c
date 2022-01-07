
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int batch; int truth; int input; } ;
typedef TYPE_2__ network ;
struct TYPE_8__ {int rows; } ;
struct TYPE_10__ {TYPE_1__ X; } ;
typedef TYPE_3__ data ;


 int assert (int) ;
 int get_next_batch (TYPE_3__,int,int,int ,int ) ;
 float train_network_datum (TYPE_2__*) ;

float train_network(network *net, data d)
{
    assert(d.X.rows % net->batch == 0);
    int batch = net->batch;
    int n = d.X.rows / batch;

    int i;
    float sum = 0;
    for(i = 0; i < n; ++i){
        get_next_batch(d, batch, i*batch, net->input, net->truth);
        float err = train_network_datum(net);
        sum += err;
    }
    return (float)sum/(n*batch);
}
