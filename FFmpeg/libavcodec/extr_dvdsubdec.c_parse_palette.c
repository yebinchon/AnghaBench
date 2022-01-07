
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_palette; int * palette; } ;
typedef TYPE_1__ DVDSubContext ;


 scalar_t__ av_isspace (char) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static void parse_palette(DVDSubContext *ctx, char *p)
{
    int i;

    ctx->has_palette = 1;
    for(i=0;i<16;i++) {
        ctx->palette[i] = strtoul(p, &p, 16);
        while(*p == ',' || av_isspace(*p))
            p++;
    }
}
