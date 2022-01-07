
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC2EncContext ;


 int encode_aspect_ratio (int *) ;
 int encode_clean_area (int *) ;
 int encode_color_spec (int *) ;
 int encode_frame_rate (int *) ;
 int encode_frame_size (int *) ;
 int encode_sample_fmt (int *) ;
 int encode_scan_format (int *) ;
 int encode_signal_range (int *) ;

__attribute__((used)) static void encode_source_params(VC2EncContext *s)
{
    encode_frame_size(s);
    encode_sample_fmt(s);
    encode_scan_format(s);
    encode_frame_rate(s);
    encode_aspect_ratio(s);
    encode_clean_area(s);
    encode_signal_range(s);
    encode_color_spec(s);
}
