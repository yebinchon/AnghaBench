#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t offset; } ;
typedef  TYPE_1__ printbuffer ;
typedef  int /*<<< orphan*/  number_buffer ;
typedef  int cJSON_bool ;
struct TYPE_7__ {double valuedouble; } ;
typedef  TYPE_2__ cJSON ;

/* Variables and functions */
 unsigned char* FUNC0 (TYPE_1__* const,size_t) ; 
 unsigned char FUNC1 () ; 
 int FUNC2 (char*,char*,...) ; 
 int FUNC3 (char*,char*,double*) ; 

__attribute__((used)) static cJSON_bool FUNC4(const cJSON * const item, printbuffer * const output_buffer)
{
    unsigned char *output_pointer = NULL;
    double d = item->valuedouble;
    int length = 0;
    size_t i = 0;
    unsigned char number_buffer[26]; /* temporary buffer to print the number into */
    unsigned char decimal_point = FUNC1();
    double test;

    if (output_buffer == NULL)
    {
        return false;
    }

    /* This checks for NaN and Infinity */
    if ((d * 0) != 0)
    {
        length = FUNC2((char*)number_buffer, "null");
    }
    else
    {
        /* Try 15 decimal places of precision to avoid nonsignificant nonzero digits */
        length = FUNC2((char*)number_buffer, "%1.15g", d);

        /* Check whether the original double can be recovered */
        if ((FUNC3((char*)number_buffer, "%lg", &test) != 1) || ((double)test != d))
        {
            /* If not, print with 17 decimal places of precision */
            length = FUNC2((char*)number_buffer, "%1.17g", d);
        }
    }

    /* sprintf failed or buffer overrun occured */
    if ((length < 0) || (length > (int)(sizeof(number_buffer) - 1)))
    {
        return false;
    }

    /* reserve appropriate space in the output */
    output_pointer = FUNC0(output_buffer, (size_t)length);
    if (output_pointer == NULL)
    {
        return false;
    }

    /* copy the printed number to the output and replace locale
     * dependent decimal point with '.' */
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

    return true;
}