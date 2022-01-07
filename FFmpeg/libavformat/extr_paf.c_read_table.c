
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int FFALIGN (int,int) ;
 int avio_rl32 (int ) ;
 int avio_skip (int ,int) ;

__attribute__((used)) static void read_table(AVFormatContext *s, uint32_t *table, uint32_t count)
{
    int i;

    for (i = 0; i < count; i++)
        table[i] = avio_rl32(s->pb);

    avio_skip(s->pb, 4 * (FFALIGN(count, 512) - count));
}
