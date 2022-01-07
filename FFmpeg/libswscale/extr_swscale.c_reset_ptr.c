
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int isALPHA (int) ;
 int isPlanar (int) ;
 int usePal (int) ;

__attribute__((used)) static void reset_ptr(const uint8_t *src[], enum AVPixelFormat format)
{
    if (!isALPHA(format))
        src[3] = ((void*)0);
    if (!isPlanar(format)) {
        src[3] = src[2] = ((void*)0);

        if (!usePal(format))
            src[1] = ((void*)0);
    }
}
