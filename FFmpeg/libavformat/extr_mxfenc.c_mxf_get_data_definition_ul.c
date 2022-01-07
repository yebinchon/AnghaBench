
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; scalar_t__* uid; } ;
typedef TYPE_1__ MXFCodecUL ;


 TYPE_1__* ff_mxf_data_definition_uls ;

__attribute__((used)) static const MXFCodecUL *mxf_get_data_definition_ul(int type)
{
    const MXFCodecUL *uls = ff_mxf_data_definition_uls;
    while (uls->uid[0]) {
        if (type == uls->id)
            break;
        uls++;
    }
    return uls;
}
