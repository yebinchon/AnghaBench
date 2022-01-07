
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int PutBitContext ;
typedef int GetBitContext ;


 int COUNT ;
 int EXTEND (int) ;
 int EXTEND_L (int) ;
 int SIZE ;
 int av_free (int *) ;
 int * av_malloc (int) ;
 int flush_put_bits (int *) ;
 int fprintf (int ,char*,int,int,int) ;
 int get_se_golomb (int *) ;
 int get_ue_golomb (int *) ;
 int get_ue_golomb_long (int *) ;
 int init_get_bits (int *,int *,int) ;
 int init_put_bits (int *,int *,int) ;
 int set_se_golomb (int *,int) ;
 int set_ue_golomb (int *,int) ;
 int set_ue_golomb_long (int *,int) ;
 int show_bits (int *,int) ;
 int show_bits_long (int *,int) ;
 int stderr ;

int main(void)
{
    int i, ret = 0;
    uint8_t *temp;
    PutBitContext pb;
    GetBitContext gb;

    temp = av_malloc(SIZE);
    if (!temp)
        return 2;

    init_put_bits(&pb, temp, SIZE);
    for (i = 0; i < COUNT; i++)
        set_ue_golomb(&pb, i);
    flush_put_bits(&pb);

    init_get_bits(&gb, temp, 8 * SIZE);
    for (i = 0; i < COUNT; i++) {
        int j, s = show_bits(&gb, 25);

        j = get_ue_golomb(&gb);
        if (j != i) {
            fprintf(stderr, "get_ue_golomb: expected %d, got %d. bits: %7x\n",
                    i, j, s);
            ret = 1;
        }
    }


    init_put_bits(&pb, temp, SIZE);
    for (i = 0; i < COUNT; i++)
        set_ue_golomb(&pb, ((i) << 3 | (i) & 7));
    flush_put_bits(&pb);

    init_get_bits(&gb, temp, 8 * SIZE);
    for (i = 0; i < COUNT; i++) {
        int j, s = show_bits_long(&gb, 32);

        j = get_ue_golomb_long(&gb);
        if (j != ((i) << 3 | (i) & 7)) {
            fprintf(stderr, "get_ue_golomb_long: expected %d, got %d. "
                    "bits: %8x\n", ((i) << 3 | (i) & 7), j, s);
            ret = 1;
        }
    }


    init_put_bits(&pb, temp, SIZE);
    for (i = 0; i < COUNT; i++)
        set_ue_golomb_long(&pb, ((i) << 4 | (i) & 15));
    flush_put_bits(&pb);

    init_get_bits(&gb, temp, 8 * SIZE);
    for (i = 0; i < COUNT; i++) {
        int j, s = show_bits_long(&gb, 32);

        j = get_ue_golomb_long(&gb);
        if (j != ((i) << 4 | (i) & 15)) {
            fprintf(stderr, "get_ue_golomb_long: expected %d, got %d. "
                    "bits: %8x\n", ((i) << 4 | (i) & 15), j, s);
            ret = 1;
        }
    }

    init_put_bits(&pb, temp, SIZE);
    for (i = 0; i < COUNT; i++)
        set_se_golomb(&pb, i - COUNT / 2);
    flush_put_bits(&pb);

    init_get_bits(&gb, temp, 8 * SIZE);
    for (i = 0; i < COUNT; i++) {
        int j, s = show_bits(&gb, 25);

        j = get_se_golomb(&gb);
        if (j != i - COUNT / 2) {
            fprintf(stderr, "get_se_golomb: expected %d, got %d. bits: %7x\n",
                    i - COUNT / 2, j, s);
            ret = 1;
        }
    }

    av_free(temp);

    return ret;
}
