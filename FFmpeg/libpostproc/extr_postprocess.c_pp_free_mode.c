
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pp_mode ;


 int av_free (int *) ;

void pp_free_mode(pp_mode *mode){
    av_free(mode);
}
