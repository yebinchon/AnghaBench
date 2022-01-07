
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fsaFd ;


 int IOCTL_FSA_CLOSE ;
 int IOS_Ioctl (scalar_t__,int ,int*,int,int*,int) ;
 scalar_t__ iosuhaxHandle ;

int IOSUHAX_FSA_Close(int fsaFd)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    int res = IOS_Ioctl(iosuhaxHandle, IOCTL_FSA_CLOSE, &fsaFd, sizeof(fsaFd), &fsaFd, sizeof(fsaFd));
    if(res < 0)
        return res;

    return fsaFd;
}
