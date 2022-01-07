
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H264_NAL_AUD ;
 int H264_NAL_PPS ;
 int H264_NAL_SEI ;
 int H264_NAL_SPS ;

__attribute__((used)) static int is_post_sei_nal_type(int nal_type){
    return nal_type != H264_NAL_SEI &&
           nal_type != H264_NAL_SPS &&
           nal_type != H264_NAL_PPS &&
           nal_type != H264_NAL_AUD;
}
