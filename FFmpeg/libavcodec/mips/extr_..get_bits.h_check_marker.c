
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size_in_bits; } ;
typedef TYPE_1__ GetBitContext ;


 int AV_LOG_INFO ;
 int av_log (void*,int ,char*,scalar_t__,int ,char const*) ;
 int get_bits1 (TYPE_1__*) ;
 scalar_t__ get_bits_count (TYPE_1__*) ;

__attribute__((used)) static inline int check_marker(void *logctx, GetBitContext *s, const char *msg)
{
    int bit = get_bits1(s);
    if (!bit)
        av_log(logctx, AV_LOG_INFO, "Marker bit missing at %d of %d %s\n",
               get_bits_count(s) - 1, s->size_in_bits, msg);

    return bit;
}
