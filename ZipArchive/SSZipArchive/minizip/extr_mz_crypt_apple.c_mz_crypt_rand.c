
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 scalar_t__ SecRandomCopyBytes (int ,int ,int *) ;
 scalar_t__ errSecSuccess ;
 int kSecRandomDefault ;

int32_t mz_crypt_rand(uint8_t *buf, int32_t size)
{
    if (SecRandomCopyBytes(kSecRandomDefault, size, buf) != errSecSuccess)
        return 0;
    return size;
}
