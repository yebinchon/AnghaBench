
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** data; } ;
typedef TYPE_1__ ThreadData ;


 int NUM_PLANES ;
 int av_freep (int *) ;

__attribute__((used)) static void cleanup_derivative_buffers(ThreadData *td, int nb_buff, int nb_planes)
{
    int b, p;

    for (b = 0; b < nb_buff; ++b) {
        for (p = 0; p < NUM_PLANES; ++p) {
            av_freep(&td->data[b][p]);
        }
    }

    for (p = 0; p < nb_planes; ++p) {
        av_freep(&td->data[b][p]);
    }
}
