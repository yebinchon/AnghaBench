
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ id3v2tag; } ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ADTSContext ;


 int ID3v2_DEFAULT_MAGIC ;
 int ff_id3v2_write_simple (TYPE_1__*,int,int ) ;

__attribute__((used)) static int adts_write_header(AVFormatContext *s)
{
    ADTSContext *adts = s->priv_data;

    if (adts->id3v2tag)
        ff_id3v2_write_simple(s, 4, ID3v2_DEFAULT_MAGIC);

    return 0;
}
