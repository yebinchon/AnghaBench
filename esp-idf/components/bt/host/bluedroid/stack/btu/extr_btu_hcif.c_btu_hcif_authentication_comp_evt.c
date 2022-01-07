
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_sec_auth_complete (int ,int ) ;

__attribute__((used)) static void btu_hcif_authentication_comp_evt (UINT8 *p)
{
    UINT8 status;
    UINT16 handle;

    STREAM_TO_UINT8 (status, p);
    STREAM_TO_UINT16 (handle, p);

    btm_sec_auth_complete (handle, status);
}
