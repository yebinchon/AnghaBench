
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int bd; } ;
typedef TYPE_2__ BlurayContext ;


 int AVERROR (int ) ;

 int AV_LOG_ERROR ;
 int EFAULT ;
 int EINVAL ;



 int av_log (TYPE_1__*,int ,char*,int) ;
 int bd_get_title_size (int ) ;
 int bd_seek (int ,int ) ;

__attribute__((used)) static int64_t bluray_seek(URLContext *h, int64_t pos, int whence)
{
    BlurayContext *bd = h->priv_data;

    if (!bd || !bd->bd) {
        return AVERROR(EFAULT);
    }

    switch (whence) {
    case 128:
    case 130:
    case 129:
        return bd_seek(bd->bd, pos);

    case 131:
        return bd_get_title_size(bd->bd);
    }

    av_log(h, AV_LOG_ERROR, "Unsupported whence operation %d\n", whence);
    return AVERROR(EINVAL);
}
