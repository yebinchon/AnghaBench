
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ parsing_backward; } ;
typedef TYPE_1__ MXFContext ;


 int mxf_seek_to_previous_partition (TYPE_1__*) ;

__attribute__((used)) static int mxf_parse_handle_partition_or_eof(MXFContext *mxf)
{
    return mxf->parsing_backward ? mxf_seek_to_previous_partition(mxf) : 1;
}
