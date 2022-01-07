
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mChannelLabel; } ;
typedef TYPE_1__ AudioChannelDescription ;


 int ffat_get_channel_id (int ) ;

__attribute__((used)) static int ffat_compare_channel_descriptions(const void* a, const void* b)
{
    const AudioChannelDescription* da = a;
    const AudioChannelDescription* db = b;
    return ffat_get_channel_id(da->mChannelLabel) - ffat_get_channel_id(db->mChannelLabel);
}
