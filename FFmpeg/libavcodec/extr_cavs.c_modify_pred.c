
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;

__attribute__((used)) static inline void modify_pred(const int8_t *mod_table, int *mode)
{
    *mode = mod_table[*mode];
    if (*mode < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Illegal intra prediction mode\n");
        *mode = 0;
    }
}
