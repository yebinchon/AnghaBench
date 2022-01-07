
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream_id_ext; int stream_id; } ;
typedef TYPE_1__ hb_pes_stream_t ;



__attribute__((used)) static int get_id(hb_pes_stream_t *pes)
{
    return ( pes->stream_id_ext << 16 ) + pes->stream_id;
}
