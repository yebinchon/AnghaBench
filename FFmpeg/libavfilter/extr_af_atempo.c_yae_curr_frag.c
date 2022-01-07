
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nfrag; int * frag; } ;
typedef int AudioFragment ;
typedef TYPE_1__ ATempoContext ;



__attribute__((used)) inline static AudioFragment *yae_curr_frag(ATempoContext *atempo)
{
    return &atempo->frag[atempo->nfrag % 2];
}
