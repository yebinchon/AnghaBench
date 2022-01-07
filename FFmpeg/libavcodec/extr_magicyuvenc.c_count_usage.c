
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int prob; } ;
typedef TYPE_1__ PTable ;



__attribute__((used)) static void count_usage(uint8_t *src, int width,
                        int height, PTable *counts)
{
    int i, j;

    for (j = 0; j < height; j++) {
        for (i = 0; i < width; i++) {
            counts[src[i]].prob++;
        }
        src += width;
    }
}
