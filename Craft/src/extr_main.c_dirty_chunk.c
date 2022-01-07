
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dirty; scalar_t__ q; scalar_t__ p; } ;
typedef TYPE_1__ Chunk ;


 TYPE_1__* find_chunk (scalar_t__,scalar_t__) ;
 scalar_t__ has_lights (TYPE_1__*) ;

void dirty_chunk(Chunk *chunk) {
    chunk->dirty = 1;
    if (has_lights(chunk)) {
        for (int dp = -1; dp <= 1; dp++) {
            for (int dq = -1; dq <= 1; dq++) {
                Chunk *other = find_chunk(chunk->p + dp, chunk->q + dq);
                if (other) {
                    other->dirty = 1;
                }
            }
        }
    }
}
