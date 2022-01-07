
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVMasteringDisplayMetadata ;


 int * av_mallocz (int) ;

AVMasteringDisplayMetadata *av_mastering_display_metadata_alloc(void)
{
    return av_mallocz(sizeof(AVMasteringDisplayMetadata));
}
