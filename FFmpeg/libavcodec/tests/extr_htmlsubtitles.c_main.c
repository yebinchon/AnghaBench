
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* str; } ;
typedef TYPE_1__ AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int FF_ARRAY_ELEMS (char**) ;
 int av_bprint_clear (TYPE_1__*) ;
 int av_bprint_finalize (TYPE_1__*,int *) ;
 int av_bprint_init (TYPE_1__*,int ,int ) ;
 int ff_htmlmarkup_to_ass (int *,TYPE_1__*,char*) ;
 int printf (char*,char*,char*) ;
 char** test_cases ;

int main(void)
{
    int i;
    AVBPrint dst;

    av_bprint_init(&dst, 0, AV_BPRINT_SIZE_UNLIMITED);
    for (i = 0; i < FF_ARRAY_ELEMS(test_cases); i++) {
        int ret = ff_htmlmarkup_to_ass(((void*)0), &dst, test_cases[i]);
        if (ret < 0)
            return ret;
        printf("%s --> %s\n", test_cases[i], dst.str);
        av_bprint_clear(&dst);
    }
    av_bprint_finalize(&dst, ((void*)0));
    return 0;
}
