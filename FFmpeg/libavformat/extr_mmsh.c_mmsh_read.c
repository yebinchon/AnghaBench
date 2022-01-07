
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_10__ {scalar_t__ asf_header_read_size; scalar_t__ asf_header_size; int remaining_in_len; } ;
struct TYPE_9__ {TYPE_3__ mms; } ;
typedef TYPE_2__ MMSHContext ;
typedef TYPE_3__ MMSContext ;


 int ff_mms_read_data (TYPE_3__*,int *,int) ;
 int ff_mms_read_header (TYPE_3__*,int *,int) ;
 int handle_chunk_type (TYPE_2__*) ;

__attribute__((used)) static int mmsh_read(URLContext *h, uint8_t *buf, int size)
{
    int res = 0;
    MMSHContext *mmsh = h->priv_data;
    MMSContext *mms = &mmsh->mms;
    do {
        if (mms->asf_header_read_size < mms->asf_header_size) {

            res = ff_mms_read_header(mms, buf, size);
        } else {
            if (!mms->remaining_in_len && (res = handle_chunk_type(mmsh)))
                return res;
            res = ff_mms_read_data(mms, buf, size);
        }
    } while (!res);
    return res;
}
