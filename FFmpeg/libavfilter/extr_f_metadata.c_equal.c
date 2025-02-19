
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MetadataContext ;


 scalar_t__ FLT_EPSILON ;
 scalar_t__ fabsf (float) ;
 int sscanf (char const*,char*,float*) ;

__attribute__((used)) static int equal(MetadataContext *s, const char *value1, const char *value2)
{
    float f1, f2;

    if (sscanf(value1, "%f", &f1) + sscanf(value2, "%f", &f2) != 2)
        return 0;

    return fabsf(f1 - f2) < FLT_EPSILON;
}
