
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;

const char* ff_fbdev_default_device()
{
    const char *dev = getenv("FRAMEBUFFER");
    if (!dev)
        dev = "/dev/fb0";
    return dev;
}
