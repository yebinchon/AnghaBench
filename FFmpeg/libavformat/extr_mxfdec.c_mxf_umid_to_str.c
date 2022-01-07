
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* UID ;


 int AVERROR (int ) ;
 int ENOMEM ;
 char* av_mallocz (int) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int mxf_umid_to_str(UID ul, UID uid, char **str)
{
    int i;
    char *p;
    p = *str = av_mallocz(sizeof(UID) * 4 + 2 + 1);
    if (!p)
        return AVERROR(ENOMEM);
    snprintf(p, 2 + 1, "0x");
    p += 2;
    for (i = 0; i < sizeof(UID); i++) {
        snprintf(p, 2 + 1, "%.2X", ul[i]);
        p += 2;

    }
    for (i = 0; i < sizeof(UID); i++) {
        snprintf(p, 2 + 1, "%.2X", uid[i]);
        p += 2;
    }
    return 0;
}
