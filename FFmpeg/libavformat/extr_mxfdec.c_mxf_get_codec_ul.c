
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UID ;
struct TYPE_4__ {int matching_len; scalar_t__* uid; } ;
typedef TYPE_1__ MXFCodecUL ;


 scalar_t__ mxf_match_uid (scalar_t__*,int ,int ) ;

__attribute__((used)) static const MXFCodecUL *mxf_get_codec_ul(const MXFCodecUL *uls, UID *uid)
{
    while (uls->uid[0]) {
        if(mxf_match_uid(uls->uid, *uid, uls->matching_len))
            break;
        uls++;
    }
    return uls;
}
