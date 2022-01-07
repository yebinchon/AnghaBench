
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MpegEncContext ;


 int ff_mpv_common_defaults (int *) ;

void ff_mpv_decode_defaults(MpegEncContext *s)
{
    ff_mpv_common_defaults(s);
}
