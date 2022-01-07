
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int value; } ;
typedef TYPE_1__ MXFTaggedValue ;
typedef int AVIOContext ;


 int avio_read (int *,int *,int) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int mxf_indirect_value_utf16be ;
 int mxf_indirect_value_utf16le ;
 int mxf_read_utf16be_string (int *,int,int *) ;
 int mxf_read_utf16le_string (int *,int,int *) ;

__attribute__((used)) static int mxf_read_indirect_value(void *arg, AVIOContext *pb, int size)
{
    MXFTaggedValue *tagged_value = arg;
    uint8_t key[17];

    if (size <= 17)
        return 0;

    avio_read(pb, key, 17);

    if (memcmp(key, mxf_indirect_value_utf16le, 17) == 0) {
        return mxf_read_utf16le_string(pb, size - 17, &tagged_value->value);
    } else if (memcmp(key, mxf_indirect_value_utf16be, 17) == 0) {
        return mxf_read_utf16be_string(pb, size - 17, &tagged_value->value);
    }
    return 0;
}
