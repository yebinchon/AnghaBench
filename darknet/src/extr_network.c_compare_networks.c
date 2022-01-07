
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int network ;
struct TYPE_8__ {int rows; int cols; int * vals; } ;
typedef TYPE_2__ matrix ;
struct TYPE_7__ {int cols; int * vals; } ;
struct TYPE_9__ {TYPE_1__ y; } ;
typedef TYPE_3__ data ;


 scalar_t__ abs (int) ;
 int max_index (int ,int ) ;
 TYPE_2__ network_predict_data (int *,TYPE_3__) ;
 float pow (scalar_t__,int) ;
 int printf (char*,float,...) ;

void compare_networks(network *n1, network *n2, data test)
{
    matrix g1 = network_predict_data(n1, test);
    matrix g2 = network_predict_data(n2, test);
    int i;
    int a,b,c,d;
    a = b = c = d = 0;
    for(i = 0; i < g1.rows; ++i){
        int truth = max_index(test.y.vals[i], test.y.cols);
        int p1 = max_index(g1.vals[i], g1.cols);
        int p2 = max_index(g2.vals[i], g2.cols);
        if(p1 == truth){
            if(p2 == truth) ++d;
            else ++c;
        }else{
            if(p2 == truth) ++b;
            else ++a;
        }
    }
    printf("%5d %5d\n%5d %5d\n", a, b, c, d);
    float num = pow((abs(b - c) - 1.), 2.);
    float den = b + c;
    printf("%f\n", num/den);
}
