
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodec ;


 int FF_ARRAY_ELEMS (int **) ;
 int avcodec_register (int *) ;
 int dummy_v1_encoder ;
 int dummy_v2_encoder ;
 int dummy_v3_encoder ;
 int dummy_v4_encoder ;
 int printf (char*) ;
 int test_copy (int *,int *) ;

int main(void)
{
    AVCodec *dummy_codec[] = {
        &dummy_v1_encoder,
        &dummy_v2_encoder,
        &dummy_v3_encoder,
        &dummy_v4_encoder,
        ((void*)0),
    };
    int i, j;

    for (i = 0; dummy_codec[i]; i++)
        avcodec_register(dummy_codec[i]);

    printf("testing avcodec_copy_context()\n");
    for (i = 0; i < FF_ARRAY_ELEMS(dummy_codec); i++)
        for (j = 0; j < FF_ARRAY_ELEMS(dummy_codec); j++)
            test_copy(dummy_codec[i], dummy_codec[j]);
    return 0;
}
