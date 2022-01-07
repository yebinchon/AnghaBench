
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int BD_ADDR ;


 int STREAM_TO_BDADDR (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_acl_role_changed (int ,int ,int ) ;
 int l2c_link_role_changed (int ,int ,int ) ;

__attribute__((used)) static void btu_hcif_role_change_evt (UINT8 *p)
{
    UINT8 status;
    BD_ADDR bda;
    UINT8 role;

    STREAM_TO_UINT8 (status, p);
    STREAM_TO_BDADDR (bda, p);
    STREAM_TO_UINT8 (role, p);

    l2c_link_role_changed (bda, role, status);
    btm_acl_role_changed(status, bda, role);
}
