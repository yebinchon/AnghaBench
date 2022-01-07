
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int write_out_ptr; int out_buffer; } ;
typedef TYPE_1__ MMSContext ;
typedef int AVIOContext ;


 int avio_put_str16le (int *,int const*) ;
 int ffio_init_context (int *,int,int,int,int *,int *,int *,int *) ;

__attribute__((used)) static int mms_put_utf16(MMSContext *mms, const uint8_t *src)
{
    AVIOContext bic;
    int size = mms->write_out_ptr - mms->out_buffer;
    int len;
    ffio_init_context(&bic, mms->write_out_ptr,
            sizeof(mms->out_buffer) - size, 1, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

    len = avio_put_str16le(&bic, src);
    if (len < 0)
        return len;
    mms->write_out_ptr += len;
    return 0;
}
