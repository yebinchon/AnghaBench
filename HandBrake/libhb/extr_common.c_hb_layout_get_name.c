
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int av_get_channel_layout_string (char*,int,int ,int ) ;

void hb_layout_get_name(char * name, int size, int64_t layout)
{
    av_get_channel_layout_string(name, size, 0, layout);
}
