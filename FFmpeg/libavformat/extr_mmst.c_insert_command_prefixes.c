
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int write_out_ptr; } ;
typedef TYPE_1__ MMSContext ;


 int bytestream_put_le32 (int *,int ) ;

__attribute__((used)) static void insert_command_prefixes(MMSContext *mms,
        uint32_t prefix1, uint32_t prefix2)
{
    bytestream_put_le32(&mms->write_out_ptr, prefix1);
    bytestream_put_le32(&mms->write_out_ptr, prefix2);
}
