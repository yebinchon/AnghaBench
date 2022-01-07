
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* subsamples; struct TYPE_4__* iv; struct TYPE_4__* key_id; } ;
typedef TYPE_1__ AVEncryptionInfo ;


 int av_free (TYPE_1__*) ;

void av_encryption_info_free(AVEncryptionInfo *info)
{
    if (info) {
        av_free(info->key_id);
        av_free(info->iv);
        av_free(info->subsamples);
        av_free(info);
    }
}
