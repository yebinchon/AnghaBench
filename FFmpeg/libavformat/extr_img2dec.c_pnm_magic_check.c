
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;



__attribute__((used)) static int pnm_magic_check(const AVProbeData *p, int magic)
{
    const uint8_t *b = p->buf;

    return b[0] == 'P' && b[1] == magic + '0';
}
