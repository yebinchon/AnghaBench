
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int hb_work_private_t ;
struct TYPE_4__ {int* data; } ;
typedef TYPE_1__ hb_buffer_t ;


 TYPE_1__* hb_buffer_init (int) ;

__attribute__((used)) static hb_buffer_t * cc_fill_buffer(hb_work_private_t *pv, uint8_t *cc, int size)
{
    int cc_count[4] = {0,};
    int ii;
    hb_buffer_t *buf = ((void*)0);

    for (ii = 0; ii < size; ii += 3)
    {
        if ((cc[ii] & 0x04) == 0)
            continue;
        if ((cc[ii+1] & 0x7f) == 0 && (cc[ii+2] & 0x7f) == 0)
            continue;
        int type = cc[ii] & 0x03;
        cc_count[type]++;
    }


    if (cc_count[0] > 0)
    {
        buf = hb_buffer_init(cc_count[0] * 2);
        int jj = 0;
        for (ii = 0; ii < size; ii += 3)
        {
            if ((cc[ii] & 0x04) == 0)
                continue;
            if ((cc[ii+1] & 0x7f) == 0 && (cc[ii+2] & 0x7f) == 0)
                continue;
            int type = cc[ii] & 0x03;
            if (type == 0)
            {
                buf->data[jj++] = cc[ii+1];
                buf->data[jj++] = cc[ii+2];
            }
        }
    }
    return buf;
}
