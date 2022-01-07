
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* deallocate ) (unsigned char*) ;scalar_t__ (* allocate ) (int) ;} ;
struct TYPE_8__ {unsigned char const* content; size_t length; size_t offset; TYPE_1__ hooks; } ;
typedef TYPE_2__ parse_buffer ;
typedef int cJSON_bool ;
struct TYPE_9__ {char* valuestring; int type; } ;
typedef TYPE_3__ cJSON ;


 unsigned char const* buffer_at_offset (TYPE_2__* const) ;
 int cJSON_String ;
 scalar_t__ stub1 (int) ;
 int stub2 (unsigned char*) ;
 unsigned char utf16_literal_to_utf8 (unsigned char const*,unsigned char const*,unsigned char**) ;

__attribute__((used)) static cJSON_bool parse_string(cJSON * const item, parse_buffer * const input_buffer)
{
    const unsigned char *input_pointer = buffer_at_offset(input_buffer) + 1;
    const unsigned char *input_end = buffer_at_offset(input_buffer) + 1;
    unsigned char *output_pointer = ((void*)0);
    unsigned char *output = ((void*)0);


    if (buffer_at_offset(input_buffer)[0] != '\"')
    {
        goto fail;
    }

    {

        size_t allocation_length = 0;
        size_t skipped_bytes = 0;
        while (((size_t)(input_end - input_buffer->content) < input_buffer->length) && (*input_end != '\"'))
        {

            if (input_end[0] == '\\')
            {
                if ((size_t)(input_end + 1 - input_buffer->content) >= input_buffer->length)
                {

                    goto fail;
                }
                skipped_bytes++;
                input_end++;
            }
            input_end++;
        }
        if (((size_t)(input_end - input_buffer->content) >= input_buffer->length) || (*input_end != '\"'))
        {
            goto fail;
        }


        allocation_length = (size_t) (input_end - buffer_at_offset(input_buffer)) - skipped_bytes;
        output = (unsigned char*)input_buffer->hooks.allocate(allocation_length + sizeof(""));
        if (output == ((void*)0))
        {
            goto fail;
        }
    }

    output_pointer = output;

    while (input_pointer < input_end)
    {
        if (*input_pointer != '\\')
        {
            *output_pointer++ = *input_pointer++;
        }

        else
        {
            unsigned char sequence_length = 2;
            if ((input_end - input_pointer) < 1)
            {
                goto fail;
            }

            switch (input_pointer[1])
            {
                case 'b':
                    *output_pointer++ = '\b';
                    break;
                case 'f':
                    *output_pointer++ = '\f';
                    break;
                case 'n':
                    *output_pointer++ = '\n';
                    break;
                case 'r':
                    *output_pointer++ = '\r';
                    break;
                case 't':
                    *output_pointer++ = '\t';
                    break;
                case '\"':
                case '\\':
                case '/':
                    *output_pointer++ = input_pointer[1];
                    break;


                case 'u':
                    sequence_length = utf16_literal_to_utf8(input_pointer, input_end, &output_pointer);
                    if (sequence_length == 0)
                    {

                        goto fail;
                    }
                    break;

                default:
                    goto fail;
            }
            input_pointer += sequence_length;
        }
    }


    *output_pointer = '\0';

    item->type = cJSON_String;
    item->valuestring = (char*)output;

    input_buffer->offset = (size_t) (input_end - input_buffer->content);
    input_buffer->offset++;

    return 1;

fail:
    if (output != ((void*)0))
    {
        input_buffer->hooks.deallocate(output);
    }

    if (input_pointer != ((void*)0))
    {
        input_buffer->offset = (size_t)(input_pointer - input_buffer->content);
    }

    return 0;
}
