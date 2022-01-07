
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t offset; int * content; } ;
typedef TYPE_1__ parse_buffer ;
typedef int number_c_string ;
typedef double int64_t ;
typedef int cJSON_bool ;
struct TYPE_8__ {double valuedouble; double valueint; int type; } ;
typedef TYPE_2__ cJSON ;


 double LLONG_MAX ;
 double LLONG_MIN ;
 int* buffer_at_offset (TYPE_1__* const) ;
 int cJSON_Number ;
 scalar_t__ can_access_at_index (TYPE_1__* const,size_t) ;
 unsigned char get_decimal_point () ;
 double strtod (char const*,char**) ;

__attribute__((used)) static cJSON_bool parse_number(cJSON * const item, parse_buffer * const input_buffer)
{
    double number = 0;
    unsigned char *after_end = ((void*)0);
    unsigned char number_c_string[64];
    unsigned char decimal_point = get_decimal_point();
    size_t i = 0;

    if ((input_buffer == ((void*)0)) || (input_buffer->content == ((void*)0)))
    {
        return 0;
    }




    for (i = 0; (i < (sizeof(number_c_string) - 1)) && can_access_at_index(input_buffer, i); i++)
    {
        switch (buffer_at_offset(input_buffer)[i])
        {
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
            case '+':
            case '-':
            case 'e':
            case 'E':
                number_c_string[i] = buffer_at_offset(input_buffer)[i];
                break;

            case '.':
                number_c_string[i] = decimal_point;
                break;

            default:
                goto loop_end;
        }
    }
loop_end:
    number_c_string[i] = '\0';

    number = strtod((const char*)number_c_string, (char**)&after_end);
    if (number_c_string == after_end)
    {
        return 0;
    }

    item->valuedouble = number;


    if (number >= LLONG_MAX)
    {
        item->valueint = LLONG_MAX;
    }
    else if (number <= LLONG_MIN)
    {
        item->valueint = LLONG_MIN;
    }
    else
    {
        item->valueint = (int64_t)number;
    }

    item->type = cJSON_Number;

    input_buffer->offset += (size_t)(after_end - number_c_string);
    return 1;
}
