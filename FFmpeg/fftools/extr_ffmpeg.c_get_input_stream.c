
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t source_index; } ;
typedef TYPE_1__ OutputStream ;
typedef int InputStream ;


 int ** input_streams ;

__attribute__((used)) static InputStream *get_input_stream(OutputStream *ost)
{
    if (ost->source_index >= 0)
        return input_streams[ost->source_index];
    return ((void*)0);
}
