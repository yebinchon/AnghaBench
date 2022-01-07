
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int fourcc; } ;
typedef TYPE_1__ VAAPIFormatDescriptor ;


 int FF_ARRAY_ELEMS (TYPE_1__ const*) ;
 TYPE_1__ const* vaapi_format_map ;

__attribute__((used)) static const VAAPIFormatDescriptor *
    vaapi_format_from_fourcc(unsigned int fourcc)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(vaapi_format_map); i++)
        if (vaapi_format_map[i].fourcc == fourcc)
            return &vaapi_format_map[i];
    return ((void*)0);
}
