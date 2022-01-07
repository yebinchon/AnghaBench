
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* UID ;


 int AVERROR (int ) ;
 int ENOMEM ;
 char* av_mallocz (int) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int mxf_uid_to_str(UID uid, char **str)
{
    int i;
    char *p;
    p = *str = av_mallocz(sizeof(UID) * 2 + 4 + 1);
    if (!p)
        return AVERROR(ENOMEM);
    for (i = 0; i < sizeof(UID); i++) {
        snprintf(p, 2 + 1, "%.2x", uid[i]);
        p += 2;
        if (i == 3 || i == 5 || i == 7 || i == 9) {
            snprintf(p, 1 + 1, "-");
            p++;
        }
    }
    return 0;
}
