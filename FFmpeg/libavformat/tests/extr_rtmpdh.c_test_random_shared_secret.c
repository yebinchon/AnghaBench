
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sharedkey2 ;
typedef int sharedkey1 ;
typedef int pubkey2 ;
typedef int pubkey1 ;
typedef int FF_DH ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 int ff_dh_compute_shared_secret_key (int *,int *,int,int *,int) ;
 int ff_dh_free (int *) ;
 int ff_dh_generate_public_key (int *) ;
 int * ff_dh_init (int) ;
 int ff_dh_write_public_key (int *,int *,int) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int printf (char*) ;

__attribute__((used)) static int test_random_shared_secret(void)
{
    FF_DH *peer1 = ((void*)0), *peer2 = ((void*)0);
    int ret;
    uint8_t pubkey1[128], pubkey2[128];
    uint8_t sharedkey1[128], sharedkey2[128];

    peer1 = ff_dh_init(1024);
    peer2 = ff_dh_init(1024);
    if (!peer1 || !peer2) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    if ((ret = ff_dh_generate_public_key(peer1)) < 0)
        goto fail;
    if ((ret = ff_dh_generate_public_key(peer2)) < 0)
        goto fail;
    if ((ret = ff_dh_write_public_key(peer1, pubkey1, sizeof(pubkey1))) < 0)
        goto fail;
    if ((ret = ff_dh_write_public_key(peer2, pubkey2, sizeof(pubkey2))) < 0)
        goto fail;
    if ((ret = ff_dh_compute_shared_secret_key(peer1, pubkey2, sizeof(pubkey2),
                                               sharedkey1, sizeof(sharedkey1))) < 0)
        goto fail;
    if ((ret = ff_dh_compute_shared_secret_key(peer2, pubkey1, sizeof(pubkey1),
                                               sharedkey2, sizeof(sharedkey2))) < 0)
        goto fail;
    if (memcmp(sharedkey1, sharedkey2, sizeof(sharedkey1))) {
        printf("Mismatched generated shared key\n");
        ret = AVERROR_INVALIDDATA;
    } else {
        printf("Generated shared key ok\n");
    }
fail:
    ff_dh_free(peer1);
    ff_dh_free(peer2);
    return ret;
}
