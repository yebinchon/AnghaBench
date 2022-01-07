
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8_t ;
struct mbedtls_ecp_point {int member_0; } ;
struct TYPE_7__ {int member_0; } ;
typedef TYPE_1__ mbedtls_ecp_group ;


 int MBEDTLS_ECP_DP_SECP256R1 ;
 scalar_t__ mbedtls_ecp_check_pubkey (TYPE_1__*,struct mbedtls_ecp_point*) ;
 int mbedtls_ecp_group_free (TYPE_1__*) ;
 int mbedtls_ecp_group_init (TYPE_1__*) ;
 scalar_t__ mbedtls_ecp_group_load (TYPE_1__*,int ) ;
 int mbedtls_ecp_point_free (struct mbedtls_ecp_point*) ;
 int mbedtls_ecp_point_init (struct mbedtls_ecp_point*) ;
 scalar_t__ mbedtls_ecp_point_read_binary (TYPE_1__*,struct mbedtls_ecp_point*,int*,int) ;
 int memcpy (int*,int const*,int) ;

bool bt_mesh_check_public_key(const u8_t key[64])
{
    struct mbedtls_ecp_point pt = {0};
    mbedtls_ecp_group grp = {0};
    bool rc = 0;

    uint8_t pub[65] = {0};

    pub[0] = 0x04;
    memcpy(&pub[1], key, 64);


    mbedtls_ecp_point_init(&pt);
    mbedtls_ecp_group_init(&grp);


    if (mbedtls_ecp_group_load(&grp, MBEDTLS_ECP_DP_SECP256R1) != 0) {
        goto exit;
    }

    if (mbedtls_ecp_point_read_binary(&grp, &pt, pub, 65) != 0) {
        goto exit;
    }

    if (mbedtls_ecp_check_pubkey(&grp, &pt) != 0) {
        goto exit;
    }

    rc = 1;

exit:
    mbedtls_ecp_point_free(&pt);
    mbedtls_ecp_group_free(&grp);
    return rc;

}
