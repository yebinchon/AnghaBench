
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ cur_stream; } ;
typedef TYPE_1__ PMPContext ;
typedef TYPE_2__ AVFormatContext ;



__attribute__((used)) static int pmp_seek(AVFormatContext *s, int stream_index, int64_t ts, int flags)
{
    PMPContext *pmp = s->priv_data;
    pmp->cur_stream = 0;

    return -1;
}
