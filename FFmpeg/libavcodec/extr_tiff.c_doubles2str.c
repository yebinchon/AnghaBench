
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int INT_MAX ;
 int av_free (char*) ;
 char* av_malloc (int) ;
 unsigned int snprintf (char*,int,char*,double,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *doubles2str(double *dp, int count, const char *sep)
{
    int i;
    char *ap, *ap0;
    uint64_t component_len;
    if (!sep) sep = ", ";
    component_len = 24LL + strlen(sep);
    if (count >= (INT_MAX - 1)/component_len)
        return ((void*)0);
    ap = av_malloc(component_len * count + 1);
    if (!ap)
        return ((void*)0);
    ap0 = ap;
    ap[0] = '\0';
    for (i = 0; i < count; i++) {
        unsigned l = snprintf(ap, component_len, "%.15g%s", dp[i], sep);
        if(l >= component_len) {
            av_free(ap0);
            return ((void*)0);
        }
        ap += l;
    }
    ap0[strlen(ap0) - strlen(sep)] = '\0';
    return ap0;
}
