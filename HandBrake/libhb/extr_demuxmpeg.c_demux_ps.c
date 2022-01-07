
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_psdemux_t ;
typedef int hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int demux_mpeg (int *,int *,int *,int) ;

__attribute__((used)) static void demux_ps( hb_buffer_t *buf, hb_buffer_list_t *list_es,
                      hb_psdemux_t *state )
{

    demux_mpeg(buf, list_es, state, 700);
}
