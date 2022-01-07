
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int music_emu; int info; } ;
typedef TYPE_1__ GMEContext ;
typedef TYPE_2__ AVFormatContext ;


 int gme_delete (int ) ;
 int gme_free_info (int ) ;

__attribute__((used)) static int read_close_gme(AVFormatContext *s)
{
    GMEContext *gme = s->priv_data;
    gme_free_info(gme->info);
    gme_delete(gme->music_emu);
    return 0;
}
