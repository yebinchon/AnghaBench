
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ MXFTaggedValue ;
typedef int AVIOContext ;


 int mxf_read_indirect_value (TYPE_1__*,int *,int) ;
 int mxf_read_utf16be_string (int *,int,int *) ;

__attribute__((used)) static int mxf_read_tagged_value(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFTaggedValue *tagged_value = arg;
    switch (tag){
    case 0x5001:
        return mxf_read_utf16be_string(pb, size, &tagged_value->name);
    case 0x5003:
        return mxf_read_indirect_value(tagged_value, pb, size);
    }
    return 0;
}
