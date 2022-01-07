
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* prot; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_8__ {TYPE_2__* url_context; } ;
struct TYPE_6__ {int (* url_read_dir ) (TYPE_2__*,int **) ;} ;
typedef int AVIODirEntry ;
typedef TYPE_3__ AVIODirContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int avio_free_directory_entry (int **) ;
 int stub1 (TYPE_2__*,int **) ;

int avio_read_dir(AVIODirContext *s, AVIODirEntry **next)
{
    URLContext *h;
    int ret;

    if (!s || !s->url_context)
        return AVERROR(EINVAL);
    h = s->url_context;
    if ((ret = h->prot->url_read_dir(h, next)) < 0)
        avio_free_directory_entry(next);
    return ret;
}
