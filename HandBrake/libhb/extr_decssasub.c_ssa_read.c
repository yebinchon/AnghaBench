
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_6__ {scalar_t__ start_time; scalar_t__ stop_time; int file; TYPE_1__* job; } ;
typedef TYPE_2__ hb_work_private_t ;
typedef int hb_buffer_t ;
struct TYPE_5__ {scalar_t__ reader_pts_offset; scalar_t__ pts_to_stop; scalar_t__ pts_to_start; } ;


 scalar_t__ AV_NOPTS_VALUE ;
 int * decode_line_to_mkv_ssa (TYPE_2__*,char*,scalar_t__) ;
 int feof (int ) ;
 int free (char*) ;
 int * hb_buffer_eof_init () ;
 scalar_t__ hb_getline (char**,size_t*,int ) ;

__attribute__((used)) static hb_buffer_t * ssa_read( hb_work_private_t * pv )
{
    hb_buffer_t * out;

    if (pv->job->reader_pts_offset == AV_NOPTS_VALUE)
    {


        return ((void*)0);
    }
    if (pv->start_time == AV_NOPTS_VALUE)
    {
        pv->start_time = pv->job->reader_pts_offset;
        if (pv->job->pts_to_stop > 0)
        {
            pv->stop_time = pv->job->pts_to_start + pv->job->pts_to_stop;
        }
    }
    while (!feof(pv->file))
    {
        char * line = ((void*)0);
        ssize_t len;
        size_t size = 0;

        len = hb_getline(&line, &size, pv->file);
        if (len > 0 && line != ((void*)0))
        {
            out = decode_line_to_mkv_ssa(pv, line, len);
            if (out != ((void*)0))
            {
                free(line);
                return out;
            }
        }
        free(line);
        if (len < 0)
        {

            out = hb_buffer_eof_init();
            return out;
        }
    }
    out = hb_buffer_eof_init();

    return out;
}
