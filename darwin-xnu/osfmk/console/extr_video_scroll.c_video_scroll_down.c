
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (void*,void*,int) ;

void video_scroll_down(void * start,
                       void * end,
                       void * dest)
{
 bcopy(end, dest, ((char *)start - (char *)end) << 2);
}
