
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int AVERROR_UNKNOWN ;
 int EINVAL ;




__attribute__((used)) static int vorbis_error_to_averror(int ov_err)
{
    switch (ov_err) {
    case 130: return AVERROR_BUG;
    case 128: return AVERROR(EINVAL);
    case 129: return AVERROR(EINVAL);
    default: return AVERROR_UNKNOWN;
    }
}
