
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVContentLightMetadata ;


 int * av_mallocz (int) ;

AVContentLightMetadata *av_content_light_metadata_alloc(size_t *size)
{
    AVContentLightMetadata *metadata = av_mallocz(sizeof(AVContentLightMetadata));

    if (size)
        *size = sizeof(*metadata);

    return metadata;
}
