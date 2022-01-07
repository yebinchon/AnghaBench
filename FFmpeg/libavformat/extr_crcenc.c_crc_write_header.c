
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AVFormatContext {TYPE_1__* priv_data; } ;
struct TYPE_2__ {int crcval; } ;
typedef TYPE_1__ CRCState ;



__attribute__((used)) static int crc_write_header(struct AVFormatContext *s)
{
    CRCState *crc = s->priv_data;


    crc->crcval = 1;

    return 0;
}
