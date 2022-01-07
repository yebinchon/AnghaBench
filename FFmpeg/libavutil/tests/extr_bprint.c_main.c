
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct tm {int tm_year; int tm_mon; int tm_mday; } ;
typedef int buf ;
struct TYPE_7__ {char* str; int len; } ;
typedef TYPE_1__ AVBPrint ;


 int AV_BPRINT_SIZE_AUTOMATIC ;
 int AV_BPRINT_SIZE_COUNT_ONLY ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int av_bprint_finalize (TYPE_1__*,int *) ;
 int av_bprint_init (TYPE_1__*,int ,int) ;
 int av_bprint_init_for_buffer (TYPE_1__*,char*,int) ;
 int av_bprint_strftime (TYPE_1__*,char*,struct tm*) ;
 int bprint_pascal (TYPE_1__*,int) ;
 int printf (char*,...) ;
 scalar_t__ strlen (char*) ;

int main(void)
{
    AVBPrint b;
    char buf[256];
    struct tm testtime = { .tm_year = 100, .tm_mon = 11, .tm_mday = 20 };

    av_bprint_init(&b, 0, AV_BPRINT_SIZE_UNLIMITED);
    bprint_pascal(&b, 5);
    printf("Short text in unlimited buffer: %u/%u\n", (unsigned)strlen(b.str), b.len);
    printf("%s\n", b.str);
    av_bprint_finalize(&b, ((void*)0));

    av_bprint_init(&b, 0, AV_BPRINT_SIZE_UNLIMITED);
    bprint_pascal(&b, 25);
    printf("Long text in unlimited buffer: %u/%u\n", (unsigned)strlen(b.str), b.len);
    av_bprint_finalize(&b, ((void*)0));

    av_bprint_init(&b, 0, 2048);
    bprint_pascal(&b, 25);
    printf("Long text in limited buffer: %u/%u\n", (unsigned)strlen(b.str), b.len);
    av_bprint_finalize(&b, ((void*)0));

    av_bprint_init(&b, 0, AV_BPRINT_SIZE_AUTOMATIC);
    bprint_pascal(&b, 5);
    printf("Short text in automatic buffer: %u/%u\n", (unsigned)strlen(b.str), b.len);

    av_bprint_init(&b, 0, AV_BPRINT_SIZE_AUTOMATIC);
    bprint_pascal(&b, 25);
    printf("Long text in automatic buffer: %u/%u\n", (unsigned)strlen(b.str)/8*8, b.len);


    av_bprint_init(&b, 0, AV_BPRINT_SIZE_COUNT_ONLY);
    bprint_pascal(&b, 25);
    printf("Long text count only buffer: %u/%u\n", (unsigned)strlen(b.str), b.len);

    av_bprint_init_for_buffer(&b, buf, sizeof(buf));
    bprint_pascal(&b, 25);
    printf("Long text count only buffer: %u/%u\n", (unsigned)strlen(buf), b.len);

    av_bprint_init(&b, 0, AV_BPRINT_SIZE_UNLIMITED);
    av_bprint_strftime(&b, "%Y-%m-%d", &testtime);
    printf("strftime full: %u/%u \"%s\"\n", (unsigned)strlen(buf), b.len, b.str);
    av_bprint_finalize(&b, ((void*)0));

    av_bprint_init(&b, 0, 8);
    av_bprint_strftime(&b, "%Y-%m-%d", &testtime);
    printf("strftime truncated: %u/%u \"%s\"\n", (unsigned)strlen(buf), b.len, b.str);

    return 0;
}
