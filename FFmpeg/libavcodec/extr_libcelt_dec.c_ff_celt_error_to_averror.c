
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;







 int EFAULT ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int ENOSYS ;
 int ENOTRECOVERABLE ;

__attribute__((used)) static int ff_celt_error_to_averror(int err)
{
    switch (err) {
        case 133: return AVERROR(EINVAL);

        case 132: return AVERROR(ENOBUFS);

        case 130: return AVERROR(EFAULT);
        case 131: return AVERROR_INVALIDDATA;
        case 128: return AVERROR(ENOSYS);



        case 134: return AVERROR(ENOMEM);
        default: return AVERROR(EINVAL);
    }
}
