
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int filename ;
struct TYPE_11__ {TYPE_2__* priv_data; } ;
struct TYPE_10__ {char* dirname; int single_file; } ;
struct TYPE_9__ {int pos; int init_range_length; int out; int initfile; } ;
typedef TYPE_1__ OutputStream ;
typedef TYPE_2__ DASHContext ;
typedef TYPE_3__ AVFormatContext ;


 int dashenc_io_close (TYPE_3__*,int *,char*) ;
 int flush_dynbuf (TYPE_2__*,TYPE_1__*,int*) ;
 int snprintf (char*,int,char*,char*,int ) ;

__attribute__((used)) static int flush_init_segment(AVFormatContext *s, OutputStream *os)
{
    DASHContext *c = s->priv_data;
    int ret, range_length;

    ret = flush_dynbuf(c, os, &range_length);
    if (ret < 0)
        return ret;

    os->pos = os->init_range_length = range_length;
    if (!c->single_file) {
        char filename[1024];
        snprintf(filename, sizeof(filename), "%s%s", c->dirname, os->initfile);
        dashenc_io_close(s, &os->out, filename);
    }
    return 0;
}
