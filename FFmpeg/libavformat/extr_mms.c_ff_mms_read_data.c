
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int remaining_in_len; int read_in_ptr; } ;
typedef TYPE_1__ MMSContext ;


 int FFMIN (int const,int) ;
 int memcpy (int *,int,int) ;

int ff_mms_read_data(MMSContext *mms, uint8_t *buf, const int size)
{
    int read_size;
    read_size = FFMIN(size, mms->remaining_in_len);
    memcpy(buf, mms->read_in_ptr, read_size);
    mms->remaining_in_len -= read_size;
    mms->read_in_ptr += read_size;
    return read_size;
}
