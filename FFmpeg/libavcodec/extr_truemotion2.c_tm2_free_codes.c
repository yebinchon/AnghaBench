
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ table; } ;
struct TYPE_4__ {TYPE_3__ vlc; int recode; } ;
typedef TYPE_1__ TM2Codes ;


 int av_free (int ) ;
 int ff_free_vlc (TYPE_3__*) ;

__attribute__((used)) static void tm2_free_codes(TM2Codes *code)
{
    av_free(code->recode);
    if (code->vlc.table)
        ff_free_vlc(&code->vlc);
}
