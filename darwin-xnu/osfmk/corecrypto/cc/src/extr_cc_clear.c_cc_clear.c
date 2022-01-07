
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIPSPOST_TRACE_EVENT ;

void cc_clear(size_t len, void *dst)
{
    FIPSPOST_TRACE_EVENT;
    volatile char *vptr = (volatile char *)dst;
    while (len--)
        *vptr++ = '\0';
}
