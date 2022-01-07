
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RV34DecContext ;


 int rv34_decoder_alloc (int *) ;
 int rv34_decoder_free (int *) ;

__attribute__((used)) static int rv34_decoder_realloc(RV34DecContext *r)
{
    rv34_decoder_free(r);
    return rv34_decoder_alloc(r);
}
