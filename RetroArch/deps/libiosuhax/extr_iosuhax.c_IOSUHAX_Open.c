
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOCTL_CHECK_IF_IOSUHAX ;
 unsigned int IOSUHAX_MAGIC_WORD ;
 int IOS_Close (int) ;
 int IOS_Ioctl (int,int ,void*,int ,unsigned int*,int) ;
 int IOS_Open (char*,int ) ;
 int iosuhaxHandle ;

int IOSUHAX_Open(const char *dev)
{
    if(iosuhaxHandle >= 0)
        return iosuhaxHandle;

    iosuhaxHandle = IOS_Open((char*)(dev ? dev : "/dev/iosuhax"), 0);
    if(iosuhaxHandle >= 0 && dev)
    {
        unsigned int res = 0;
        IOS_Ioctl(iosuhaxHandle, IOCTL_CHECK_IF_IOSUHAX, (void*)0, 0, &res, 4);
        if(res != IOSUHAX_MAGIC_WORD)
        {
            IOS_Close(iosuhaxHandle);
            iosuhaxHandle = -1;
        }
    }

    return iosuhaxHandle;
}
