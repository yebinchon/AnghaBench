
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int metadata_size; scalar_t__ out; } ;
typedef TYPE_1__ OutputStream ;


 int avio_write (scalar_t__,int *,int) ;
 int parse_header (TYPE_1__*,int *,int) ;

__attribute__((used)) static int hds_write(void *opaque, uint8_t *buf, int buf_size)
{
    OutputStream *os = opaque;
    if (os->out) {
        avio_write(os->out, buf, buf_size);
    } else {
        if (!os->metadata_size) {
            int ret;


            if ((ret = parse_header(os, buf, buf_size)) < 0)
                return ret;
        }
    }
    return buf_size;
}
