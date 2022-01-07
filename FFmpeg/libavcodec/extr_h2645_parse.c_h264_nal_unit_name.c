
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_assert0 (int) ;
 char const** h264_nal_type_name ;

__attribute__((used)) static const char *h264_nal_unit_name(int nal_type)
{
    av_assert0(nal_type >= 0 && nal_type < 32);
    return h264_nal_type_name[nal_type];
}
