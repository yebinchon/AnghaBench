
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ sync_stream_t ;






__attribute__((used)) static const char * getStreamType( sync_stream_t * stream )
{
    switch (stream->type)
    {
        case 128:
            return "Video";
        case 130:
            return "Audio";
        case 129:
            return "Subtitle";
        default:
            return "Unknown";
    }
}
