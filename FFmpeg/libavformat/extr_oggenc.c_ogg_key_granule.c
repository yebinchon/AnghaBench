
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int kfgshift; scalar_t__ isvp8; } ;
typedef TYPE_1__ OGGStreamContext ;



__attribute__((used)) static int ogg_key_granule(OGGStreamContext *oggstream, int64_t granule)
{
    return (oggstream->kfgshift && !(granule & ((1<<oggstream->kfgshift)-1))) ||
           (oggstream->isvp8 && !((granule >> 3) & 0x07ffffff));
}
