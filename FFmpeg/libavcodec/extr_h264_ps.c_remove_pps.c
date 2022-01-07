
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pps_list; } ;
typedef TYPE_1__ H264ParamSets ;


 int av_buffer_unref (int *) ;

__attribute__((used)) static void remove_pps(H264ParamSets *s, int id)
{
    av_buffer_unref(&s->pps_list[id]);
}
