
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t offset; } ;
typedef TYPE_1__ printbuffer ;
typedef int number_buffer ;
typedef int cJSON_bool ;
struct TYPE_7__ {double valuedouble; } ;
typedef TYPE_2__ cJSON ;


 unsigned char* ensure (TYPE_1__* const,size_t) ;
 unsigned char get_decimal_point () ;
 int sprintf (char*,char*,...) ;
 int sscanf (char*,char*,double*) ;

__attribute__((used)) static cJSON_bool print_number(const cJSON * const item, printbuffer * const output_buffer)
{
    unsigned char *output_pointer = ((void*)0);
    double d = item->valuedouble;
    int length = 0;
    size_t i = 0;
    unsigned char number_buffer[26];
    unsigned char decimal_point = get_decimal_point();
    double test;

    if (output_buffer == ((void*)0))
    {
        return 0;
    }


    if ((d * 0) != 0)
    {
        length = sprintf((char*)number_buffer, "null");
    }
    else
    {

        length = sprintf((char*)number_buffer, "%1.15g", d);


        if ((sscanf((char*)number_buffer, "%lg", &test) != 1) || ((double)test != d))
        {

            length = sprintf((char*)number_buffer, "%1.17g", d);
        }
    }


    if ((length < 0) || (length > (int)(sizeof(number_buffer) - 1)))
    {
        return 0;
    }


    output_pointer = ensure(output_buffer, (size_t)length);
    if (output_pointer == ((void*)0))
    {
        return 0;
    }



    for (i = 0; i < ((size_t)length); i++)
    {
        if (number_buffer[i] == decimal_point)
        {
            output_pointer[i] = '.';
            continue;
        }

        output_pointer[i] = number_buffer[i];
    }
    output_pointer[i] = '\0';

    output_buffer->offset += (size_t)length;

    return 1;
}
