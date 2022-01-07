
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;



__attribute__((used)) static void
find_tongue(uint16_t* const pixels,
            int const w,
            int const linesize,
            int const row,
            int * const presentP,
            int * const leftEdgeP,
            int * const rightEdgeP)
{
    int i;

    for (i = 0; i < w && pixels[row * linesize + i * 4 + 0] == 0; i++)
        ;

    if (i >= w) {
        *presentP = 0;
    } else {
        int j;
        int const leftEdge = i;

        *presentP = 1;

        for (j = w - 1; j >= leftEdge && pixels[row * linesize + j * 4 + 0] == 0; j--)
            ;

        *rightEdgeP = j;
        *leftEdgeP = leftEdge;
    }
}
