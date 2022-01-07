
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ts; } ;
typedef TYPE_1__ PayloadContext ;


 int avpriv_mpegts_parse_close (scalar_t__) ;

__attribute__((used)) static void mpegts_close_context(PayloadContext *data)
{
    if (!data)
        return;
    if (data->ts)
        avpriv_mpegts_parse_close(data->ts);
}
