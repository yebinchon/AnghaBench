
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream_copy; int finished; } ;
typedef TYPE_1__ OutputStream ;
typedef int OptionsContext ;
typedef int AVFormatContext ;


 int AVMEDIA_TYPE_ATTACHMENT ;
 TYPE_1__* new_output_stream (int *,int *,int ,int) ;

__attribute__((used)) static OutputStream *new_attachment_stream(OptionsContext *o, AVFormatContext *oc, int source_index)
{
    OutputStream *ost = new_output_stream(o, oc, AVMEDIA_TYPE_ATTACHMENT, source_index);
    ost->stream_copy = 1;
    ost->finished = 1;
    return ost;
}
