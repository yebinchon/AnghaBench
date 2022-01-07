
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_freep (void**) ;

__attribute__((used)) static void free_buffer(void *data, size_t length)
{
    av_freep(&data);
}
