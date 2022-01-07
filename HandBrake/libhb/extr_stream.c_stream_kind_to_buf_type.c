
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDIO_BUF ;
 int OTHER_BUF ;

 int SUBTITLE_BUF ;

 int VIDEO_BUF ;

__attribute__((used)) static int stream_kind_to_buf_type(int kind)
{
    switch (kind)
    {
        case 130:
            return AUDIO_BUF;
        case 128:
            return VIDEO_BUF;
        case 129:
            return SUBTITLE_BUF;
        default:
            return OTHER_BUF;
    }
}
