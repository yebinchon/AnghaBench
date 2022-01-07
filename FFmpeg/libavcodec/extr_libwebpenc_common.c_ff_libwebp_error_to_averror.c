
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int EINVAL ;
 int ENOMEM ;






int ff_libwebp_error_to_averror(int err)
{
    switch (err) {
    case 128:
    case 131:
        return AVERROR(ENOMEM);
    case 129:
    case 130:
    case 132:
        return AVERROR(EINVAL);
    }
    return AVERROR_UNKNOWN;
}
