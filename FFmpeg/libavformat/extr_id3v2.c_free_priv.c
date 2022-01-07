
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* data; struct TYPE_3__* owner; } ;
typedef TYPE_1__ ID3v2ExtraMetaPRIV ;


 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void free_priv(void *obj)
{
    ID3v2ExtraMetaPRIV *priv = obj;
    av_freep(&priv->owner);
    av_freep(&priv->data);
    av_freep(&priv);
}
