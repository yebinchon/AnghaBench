
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ segment_type; char const* str; } ;
typedef scalar_t__ SegmentType ;


 int SEGMENT_TYPE_NB ;
 TYPE_1__* formats ;

__attribute__((used)) static const char *get_format_str(SegmentType segment_type) {
    int i;
    for (i = 0; i < SEGMENT_TYPE_NB; i++)
        if (formats[i].segment_type == segment_type)
            return formats[i].str;
    return ((void*)0);
}
