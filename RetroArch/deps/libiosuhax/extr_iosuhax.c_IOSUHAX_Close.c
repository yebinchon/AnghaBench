
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOS_Close (int) ;
 int iosuhaxHandle ;

int IOSUHAX_Close(void)
{
    if(iosuhaxHandle < 0)
        return 0;

    int res = IOS_Close(iosuhaxHandle);
    iosuhaxHandle = -1;
    return res;
}
