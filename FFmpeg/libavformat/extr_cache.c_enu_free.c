
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_free (void*) ;

__attribute__((used)) static int enu_free(void *opaque, void *elem)
{
    av_free(elem);
    return 0;
}
