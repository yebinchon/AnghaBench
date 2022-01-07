
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buffer; int offset; } ;
typedef TYPE_1__ printbuffer ;


 int strlen (char const*) ;

__attribute__((used)) static void update_offset(printbuffer * const buffer)
{
    const unsigned char *buffer_pointer = ((void*)0);
    if ((buffer == ((void*)0)) || (buffer->buffer == ((void*)0)))
    {
        return;
    }
    buffer_pointer = buffer->buffer + buffer->offset;

    buffer->offset += strlen((const char*)buffer_pointer);
}
