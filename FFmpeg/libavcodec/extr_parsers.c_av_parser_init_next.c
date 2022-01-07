
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; } ;
typedef TYPE_1__ AVCodecParser ;


 scalar_t__* parser_list ;

__attribute__((used)) static void av_parser_init_next(void)
{
    AVCodecParser *prev = ((void*)0), *p;
    int i = 0;
    while ((p = (AVCodecParser*)parser_list[i++])) {
        if (prev)
            prev->next = p;
        prev = p;
    }
}
