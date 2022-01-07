
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int buffer_size; int pkt_size; } ;
typedef TYPE_1__ RTSPState ;
typedef int AVDictionary ;


 int av_dict_set (int **,char*,char*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static AVDictionary *map_to_opts(RTSPState *rt)
{
    AVDictionary *opts = ((void*)0);
    char buf[256];

    snprintf(buf, sizeof(buf), "%d", rt->buffer_size);
    av_dict_set(&opts, "buffer_size", buf, 0);
    snprintf(buf, sizeof(buf), "%d", rt->pkt_size);
    av_dict_set(&opts, "pkt_size", buf, 0);

    return opts;
}
