
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_close (int *) ;

int avio_closep(AVIOContext **s)
{
    int ret = avio_close(*s);
    *s = ((void*)0);
    return ret;
}
