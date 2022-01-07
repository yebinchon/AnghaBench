
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ offset; scalar_t__ length; int * content; } ;
typedef TYPE_1__ parse_buffer ;


 int* buffer_at_offset (TYPE_1__* const) ;
 scalar_t__ can_access_at_index (TYPE_1__* const,int ) ;

__attribute__((used)) static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer)
{
    if ((buffer == ((void*)0)) || (buffer->content == ((void*)0)))
    {
        return ((void*)0);
    }

    while (can_access_at_index(buffer, 0) && (buffer_at_offset(buffer)[0] <= 32))
    {
       buffer->offset++;
    }

    if (buffer->offset == buffer->length)
    {
        buffer->offset--;
    }

    return buffer;
}
