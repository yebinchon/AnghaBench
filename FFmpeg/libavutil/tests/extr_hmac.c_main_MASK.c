#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char const uint8_t ;
typedef  int /*<<< orphan*/  key3 ;
typedef  int /*<<< orphan*/  key2 ;
typedef  int /*<<< orphan*/  key1 ;
typedef  enum AVHMACType { ____Placeholder_AVHMACType } AVHMACType ;
typedef  int /*<<< orphan*/  data6 ;
typedef  int /*<<< orphan*/  data5 ;
typedef  int /*<<< orphan*/  data4 ;
typedef  int /*<<< orphan*/  data3 ;
typedef  int /*<<< orphan*/  data2 ;
typedef  int /*<<< orphan*/  data1 ;
struct TYPE_5__ {int hashlen; } ;
typedef  TYPE_1__ AVHMAC ;

/* Variables and functions */
 int AV_HMAC_MD5 ; 
 int AV_HMAC_SHA1 ; 
 int AV_HMAC_SHA224 ; 
 int AV_HMAC_SHA512 ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int,char const*,int) ; 

int FUNC4(void)
{
    uint8_t key1[20], key3[131], data3[50];
    AVHMAC *hmac;
    enum AVHMACType i;
    static const uint8_t key2[]  = "Jefe";
    static const uint8_t data1[] = "Hi There";
    static const uint8_t data2[] = "what do ya want for nothing?";
    static const uint8_t data4[] = "Test Using Larger Than Block-Size Key - Hash Key First";
    static const uint8_t data5[] = "Test Using Larger Than Block-Size Key and Larger Than One Block-Size Data";
    static const uint8_t data6[] = "This is a test using a larger than block-size key and a larger "
                            "than block-size data. The key needs to be hashed before being used"
                            " by the HMAC algorithm.";
    FUNC2(key1, 0x0b, sizeof(key1));
    FUNC2(key3, 0xaa, sizeof(key3));
    FUNC2(data3, 0xdd, sizeof(data3));

    /* MD5, SHA-1 */
    for (i = AV_HMAC_MD5; i <= AV_HMAC_SHA1; i++) {
        hmac = FUNC0(i);
        if (!hmac)
            return 1;
        // RFC 2202 test vectors
        FUNC3(hmac, key1, hmac->hashlen, data1, sizeof(data1));
        FUNC3(hmac, key2, sizeof(key2),  data2, sizeof(data2));
        FUNC3(hmac, key3, hmac->hashlen, data3, sizeof(data3));
        FUNC3(hmac, key3, 80,            data4, sizeof(data4));
        FUNC3(hmac, key3, 80,            data5, sizeof(data5));
        FUNC1(hmac);
    }

    /* SHA-2 */
    for (i = AV_HMAC_SHA224; i <= AV_HMAC_SHA512; i++) {
        hmac = FUNC0(i);
        if (!hmac)
            return 1;
        // RFC 4231 test vectors
        FUNC3(hmac, key1, sizeof(key1), data1, sizeof(data1));
        FUNC3(hmac, key2, sizeof(key2), data2, sizeof(data2));
        FUNC3(hmac, key3, 20,           data3, sizeof(data3));
        FUNC3(hmac, key3, sizeof(key3), data4, sizeof(data4));
        FUNC3(hmac, key3, sizeof(key3), data6, sizeof(data6));
        FUNC1(hmac);
    }

    return 0;
}