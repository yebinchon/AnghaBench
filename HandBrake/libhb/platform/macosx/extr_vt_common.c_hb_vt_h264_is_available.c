
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int encoder_id_h264 ;
 int encvt_available (int ) ;

int hb_vt_h264_is_available()
{
    return encvt_available(encoder_id_h264);
}
