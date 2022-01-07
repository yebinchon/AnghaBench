
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int FFABS (int const) ;
 int FFMIN (int,int ) ;
 int INT16_MAX ;

__attribute__((used)) static int16_t max_abs_value_w16(const int16_t* vector, int length)
{
    int i = 0, absolute = 0, maximum = 0;

    if (vector == ((void*)0) || length <= 0) {
        return -1;
    }

    for (i = 0; i < length; i++) {
        absolute = FFABS(vector[i]);
        if (absolute > maximum)
            maximum = absolute;
    }


    return FFMIN(maximum, INT16_MAX);
}
