
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nb_encrypted_samples; struct TYPE_5__* auxiliary_offsets; struct TYPE_5__* auxiliary_info_sizes; struct TYPE_5__* encrypted_samples; } ;
typedef TYPE_1__ MOVEncryptionIndex ;


 int av_encryption_info_free (TYPE_1__) ;
 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void mov_free_encryption_index(MOVEncryptionIndex **index) {
    int i;
    if (!index || !*index) return;
    for (i = 0; i < (*index)->nb_encrypted_samples; i++) {
        av_encryption_info_free((*index)->encrypted_samples[i]);
    }
    av_freep(&(*index)->encrypted_samples);
    av_freep(&(*index)->auxiliary_info_sizes);
    av_freep(&(*index)->auxiliary_offsets);
    av_freep(index);
}
