
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_acl_encrypt_change (int ,int ,int ) ;
 int btm_sec_encrypt_change (int ,int ,int ) ;

__attribute__((used)) static void btu_hcif_encryption_change_evt (UINT8 *p)
{
    UINT8 status;
    UINT16 handle;
    UINT8 encr_enable;

    STREAM_TO_UINT8 (status, p);
    STREAM_TO_UINT16 (handle, p);
    STREAM_TO_UINT8 (encr_enable, p);

    btm_acl_encrypt_change (handle, status, encr_enable);
    btm_sec_encrypt_change (handle, status, encr_enable);
}
