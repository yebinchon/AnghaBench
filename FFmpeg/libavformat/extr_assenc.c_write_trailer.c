
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int trailer_size; scalar_t__ trailer; } ;
struct TYPE_5__ {int pb; TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASSContext ;


 int avio_write (int ,scalar_t__,int ) ;
 int purge_dialogues (TYPE_1__*,int) ;

__attribute__((used)) static int write_trailer(AVFormatContext *s)
{
    ASSContext *ass = s->priv_data;

    purge_dialogues(s, 1);

    if (ass->trailer) {
        avio_write(s->pb, ass->trailer, ass->trailer_size);
    }

    return 0;
}
