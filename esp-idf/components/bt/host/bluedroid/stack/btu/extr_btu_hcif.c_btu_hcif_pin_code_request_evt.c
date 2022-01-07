
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int BD_ADDR ;


 int STREAM_TO_BDADDR (int ,int *) ;
 int btm_sec_pin_code_request (int ) ;
 int l2c_pin_code_request (int ) ;

__attribute__((used)) static void btu_hcif_pin_code_request_evt (UINT8 *p)
{

    BD_ADDR bda;

    STREAM_TO_BDADDR (bda, p);



    l2c_pin_code_request (bda);

    btm_sec_pin_code_request (bda);

}
