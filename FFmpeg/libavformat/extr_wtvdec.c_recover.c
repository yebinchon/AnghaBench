
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {int nb_index_entries; TYPE_1__* index_entries; int pts; int * pb; } ;
typedef TYPE_2__ WtvContext ;
struct TYPE_4__ {scalar_t__ pos; int timestamp; } ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int EIO ;
 int SEEK_SET ;
 scalar_t__ avio_seek (int *,scalar_t__,int ) ;

__attribute__((used)) static int recover(WtvContext *wtv, uint64_t broken_pos)
{
    AVIOContext *pb = wtv->pb;
    int i;
    for (i = 0; i < wtv->nb_index_entries; i++) {
        if (wtv->index_entries[i].pos > broken_pos) {
            int64_t ret = avio_seek(pb, wtv->index_entries[i].pos, SEEK_SET);
            if (ret < 0)
                return ret;
            wtv->pts = wtv->index_entries[i].timestamp;
            return 0;
         }
     }
     return AVERROR(EIO);
}
