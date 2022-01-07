
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int CB_FILTERLEN ;
 int CB_HALFFILTERLEN ;
 scalar_t__ SPL_MUL_16_16 (int,int) ;
 int SUBL ;
 int create_augmented_vector (int,int*,int*) ;
 int filter_mafq12 (int*,int*,int*,int,int) ;
 scalar_t__ kCbFiltersRev ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void get_codebook(int16_t * cbvec,
                     int16_t * mem,
                     int16_t index,
                     int16_t lMem,
                     int16_t cbveclen
)
{
    int16_t k, base_size;
    int16_t lag;

    int16_t tempbuff2[SUBL + 5];


    base_size = lMem - cbveclen + 1;

    if (cbveclen == SUBL) {
        base_size += cbveclen / 2;
    }


    if (index < lMem - cbveclen + 1) {


        k = index + cbveclen;

        memcpy(cbvec, mem + lMem - k, cbveclen * 2);
    } else if (index < base_size) {



        k = (int16_t) SPL_MUL_16_16(2, (index - (lMem - cbveclen + 1))) + cbveclen;

        lag = k / 2;

        create_augmented_vector(lag, mem + lMem, cbvec);
    } else {
        int16_t memIndTest;



        if (index - base_size < lMem - cbveclen + 1) {



            memIndTest = lMem - (index - base_size + cbveclen);

            memset(mem - CB_HALFFILTERLEN, 0, CB_HALFFILTERLEN * 2);
            memset(mem + lMem, 0, CB_HALFFILTERLEN * 2);



            filter_mafq12(&mem[memIndTest + 4], cbvec, (int16_t *) kCbFiltersRev, CB_FILTERLEN, cbveclen);
        } else {


            memIndTest = lMem - cbveclen - CB_FILTERLEN;
            memset(mem + lMem, 0, CB_HALFFILTERLEN * 2);


            filter_mafq12(&mem[memIndTest + 7], tempbuff2, (int16_t *) kCbFiltersRev, CB_FILTERLEN, (int16_t) (cbveclen + 5));


            lag = (cbveclen << 1) - 20 + index - base_size - lMem - 1;

            create_augmented_vector(lag, tempbuff2 + SUBL + 5, cbvec);
        }
    }
}
