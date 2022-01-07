
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (void*,void*,int) ;

void
video_scroll_up(void * start, void * end, void * dest)
{
 bcopy(start, dest, ((char *)end - (char *)start) << 2);
}
