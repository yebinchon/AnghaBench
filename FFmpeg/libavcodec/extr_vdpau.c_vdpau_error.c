
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VdpStatus ;


 int AVERROR (int ) ;
 int EBADF ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOBUFS ;
 int ENOSYS ;
 int EXDEV ;
__attribute__((used)) static int vdpau_error(VdpStatus status)
{
    switch (status) {
    case 129:
        return 0;
    case 130:
        return AVERROR(ENOSYS);
    case 135:
        return AVERROR(EIO);
    case 132:
        return AVERROR(EBADF);
    case 131:
        return AVERROR(EFAULT);
    case 128:
        return AVERROR(ENOBUFS);
    case 133:
        return AVERROR(EXDEV);
    case 134:
        return AVERROR(EIO);
    default:
        return AVERROR(EINVAL);
    }
}
