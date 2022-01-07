
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int printbuffer ;
typedef int cJSON_bool ;


 unsigned char* ensure (int * const,int) ;
 int memcpy (unsigned char*,unsigned char const* const,size_t) ;
 int sprintf (char*,char*,unsigned char const) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static cJSON_bool print_string_ptr(const unsigned char * const input, printbuffer * const output_buffer)
{
    const unsigned char *input_pointer = ((void*)0);
    unsigned char *output = ((void*)0);
    unsigned char *output_pointer = ((void*)0);
    size_t output_length = 0;

    size_t escape_characters = 0;

    if (output_buffer == ((void*)0))
    {
        return 0;
    }


    if (input == ((void*)0))
    {
        output = ensure(output_buffer, sizeof("\"\""));
        if (output == ((void*)0))
        {
            return 0;
        }
        strcpy((char*)output, "\"\"");

        return 1;
    }


    for (input_pointer = input; *input_pointer; input_pointer++)
    {
        switch (*input_pointer)
        {
            case '\"':
            case '\\':
            case '\b':
            case '\f':
            case '\n':
            case '\r':
            case '\t':

                escape_characters++;
                break;
            default:
                if (*input_pointer < 32)
                {

                    escape_characters += 5;
                }
                break;
        }
    }
    output_length = (size_t)(input_pointer - input) + escape_characters;

    output = ensure(output_buffer, output_length + sizeof("\"\""));
    if (output == ((void*)0))
    {
        return 0;
    }


    if (escape_characters == 0)
    {
        output[0] = '\"';
        memcpy(output + 1, input, output_length);
        output[output_length + 1] = '\"';
        output[output_length + 2] = '\0';

        return 1;
    }

    output[0] = '\"';
    output_pointer = output + 1;

    for (input_pointer = input; *input_pointer != '\0'; (void)input_pointer++, output_pointer++)
    {
        if ((*input_pointer > 31) && (*input_pointer != '\"') && (*input_pointer != '\\'))
        {

            *output_pointer = *input_pointer;
        }
        else
        {

            *output_pointer++ = '\\';
            switch (*input_pointer)
            {
                case '\\':
                    *output_pointer = '\\';
                    break;
                case '\"':
                    *output_pointer = '\"';
                    break;
                case '\b':
                    *output_pointer = 'b';
                    break;
                case '\f':
                    *output_pointer = 'f';
                    break;
                case '\n':
                    *output_pointer = 'n';
                    break;
                case '\r':
                    *output_pointer = 'r';
                    break;
                case '\t':
                    *output_pointer = 't';
                    break;
                default:

                    sprintf((char*)output_pointer, "u%04x", *input_pointer);
                    output_pointer += 4;
                    break;
            }
        }
    }
    output[output_length + 1] = '\"';
    output[output_length + 2] = '\0';

    return 1;
}
