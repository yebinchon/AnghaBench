
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSMP_ENC ;
typedef int UINT8 ;
typedef int BOOLEAN ;


 int FALSE ;
 int smp_encrypt_data (int *,int ,int *,int ,int *) ;

BOOLEAN SMP_Encrypt (UINT8 *key, UINT8 key_len,
                     UINT8 *plain_text, UINT8 pt_len,
                     tSMP_ENC *p_out)

{
    BOOLEAN status = FALSE;
    status = smp_encrypt_data(key, key_len, plain_text, pt_len, p_out);
    return status;
}
