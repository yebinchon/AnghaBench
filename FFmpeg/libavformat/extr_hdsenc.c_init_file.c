
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int (* io_open ) (TYPE_2__*,int *,int ,int ,int *) ;} ;
struct TYPE_6__ {int nb_extra_packets; int** extra_packets; int * extra_packet_sizes; int out; int temp_filename; } ;
typedef TYPE_1__ OutputStream ;
typedef TYPE_2__ AVFormatContext ;


 int AVIO_FLAG_WRITE ;
 int AV_WB24 (int*,int) ;
 int MKTAG (char,char,char,char) ;
 int avio_wb32 (int ,int ) ;
 int avio_wl32 (int ,int ) ;
 int avio_write (int ,int*,int ) ;
 int stub1 (TYPE_2__*,int *,int ,int ,int *) ;

__attribute__((used)) static int init_file(AVFormatContext *s, OutputStream *os, int64_t start_ts)
{
    int ret, i;
    ret = s->io_open(s, &os->out, os->temp_filename, AVIO_FLAG_WRITE, ((void*)0));
    if (ret < 0)
        return ret;
    avio_wb32(os->out, 0);
    avio_wl32(os->out, MKTAG('m','d','a','t'));
    for (i = 0; i < os->nb_extra_packets; i++) {
        AV_WB24(os->extra_packets[i] + 4, start_ts);
        os->extra_packets[i][7] = (start_ts >> 24) & 0x7f;
        avio_write(os->out, os->extra_packets[i], os->extra_packet_sizes[i]);
    }
    return 0;
}
