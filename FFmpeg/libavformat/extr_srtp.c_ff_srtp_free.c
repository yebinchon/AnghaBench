
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SRTPContext {int * hmac; int aes; } ;


 int av_freep (int *) ;
 int av_hmac_free (int *) ;

void ff_srtp_free(struct SRTPContext *s)
{
    if (!s)
        return;
    av_freep(&s->aes);
    if (s->hmac)
        av_hmac_free(s->hmac);
    s->hmac = ((void*)0);
}
