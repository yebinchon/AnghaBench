
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int seed ;
typedef int UCHAR ;
typedef int NTSTATUS ;
typedef int BCRYPT_ALG_HANDLE ;


 int BCRYPT_RNG_ALGORITHM ;
 scalar_t__ BCRYPT_SUCCESS (int ) ;
 int BCryptCloseAlgorithmProvider (int ,int ) ;
 int BCryptGenRandom (int ,int *,int,int ) ;
 int BCryptOpenAlgorithmProvider (int *,int ,int ,int ) ;
 int MS_PRIMITIVE_PROVIDER ;
 int arc4random () ;
 int get_generic_seed () ;
 int read_random (int *,char*) ;

uint32_t av_get_random_seed(void)
{
    uint32_t seed;
    if (read_random(&seed, "/dev/urandom") == sizeof(seed))
        return seed;
    if (read_random(&seed, "/dev/random") == sizeof(seed))
        return seed;
    return get_generic_seed();
}
