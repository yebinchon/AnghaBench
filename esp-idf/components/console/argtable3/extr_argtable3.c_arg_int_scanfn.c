
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ maxcount; } ;
struct arg_int {scalar_t__ count; long* ival; TYPE_1__ hdr; } ;


 int EBADINT ;
 int EMAXCOUNT ;
 int EOVERFLOW ;
 long INT_MAX ;
 long INT_MIN ;
 scalar_t__ detectsuffix (char const*,char*) ;
 long strtol (char const*,char**,int) ;
 long strtol0X (char const*,char const**,char,int) ;

__attribute__((used)) static int arg_int_scanfn(struct arg_int *parent, const char *argval)
{
    int errorcode = 0;

    if (parent->count == parent->hdr.maxcount)
    {

        errorcode = EMAXCOUNT;
    }
    else if (!argval)
    {



        parent->count++;
    }
    else
    {
        long int val;
        const char *end;


        val = strtol0X(argval, &end, 'X', 16);
        if (end == argval)
        {

            val = strtol0X(argval, &end, 'O', 8);
            if (end == argval)
            {

                val = strtol0X(argval, &end, 'B', 2);
                if (end == argval)
                {

                    val = strtol(argval, (char * *)&end, 10);
                    if (end == argval)
                    {

                        return EBADINT;
                    }
                }
            }
        }



        if ( val > INT_MAX || val < INT_MIN )
            errorcode = EOVERFLOW;



        if (detectsuffix(end, "KB"))
        {
            if ( val > (INT_MAX / 1024) || val < (INT_MIN / 1024) )
                errorcode = EOVERFLOW;
            else
                val *= 1024;
        }
        else if (detectsuffix(end, "MB"))
        {
            if ( val > (INT_MAX / 1048576) || val < (INT_MIN / 1048576) )
                errorcode = EOVERFLOW;
            else
                val *= 1048576;
        }
        else if (detectsuffix(end, "GB"))
        {
            if ( val > (INT_MAX / 1073741824) || val < (INT_MIN / 1073741824) )
                errorcode = EOVERFLOW;
            else
                val *= 1073741824;
        }
        else if (!detectsuffix(end, ""))
            errorcode = EBADINT;


        if (errorcode == 0)
            parent->ival[parent->count++] = val;
    }


    return errorcode;
}
