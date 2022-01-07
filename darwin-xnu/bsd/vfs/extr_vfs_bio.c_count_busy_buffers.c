
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bufs_iobufinuse; } ;


 int buf_busycount ;
 TYPE_1__ bufstats ;

int
count_busy_buffers(void)
{
 return buf_busycount + bufstats.bufs_iobufinuse;
}
