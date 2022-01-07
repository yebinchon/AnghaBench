
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_8__ {int readorder; } ;
struct TYPE_7__ {int len; char* str; } ;
typedef TYPE_1__ AVBPrint ;
typedef TYPE_2__ ASSContext ;


 int atoi (int const*) ;
 int av_bprint_clear (TYPE_1__*) ;
 int av_bprintf (TYPE_1__*,char*,int ,int const,int const*) ;
 int sscanf (int const*,char*,int*,int*,int*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static int read_dialogue(ASSContext *ass, AVBPrint *dst, const uint8_t *p,
                         int64_t *start, int *duration)
{
    int pos = 0;
    int64_t end;
    int hh1, mm1, ss1, ms1;
    int hh2, mm2, ss2, ms2;

    if (sscanf(p, "Dialogue: %*[^,],%d:%d:%d%*c%d,%d:%d:%d%*c%d,%n",
               &hh1, &mm1, &ss1, &ms1,
               &hh2, &mm2, &ss2, &ms2, &pos) >= 8 && pos > 0) {





        const int layer = atoi(p + 10);

        end = (hh2*3600LL + mm2*60LL + ss2) * 100LL + ms2;
        *start = (hh1*3600LL + mm1*60LL + ss1) * 100LL + ms1;
        *duration = end - *start;

        av_bprint_clear(dst);
        av_bprintf(dst, "%u,%d,%s", ass->readorder++, layer, p + pos);


        while (dst->len > 0 &&
               dst->str[dst->len - 1] == '\r' ||
               dst->str[dst->len - 1] == '\n')
            dst->str[--dst->len] = 0;
        return 0;
    }
    return -1;
}
