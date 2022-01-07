
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int LINK_KEY ;
typedef int BD_ADDR ;


 int STREAM_TO_ARRAY16 (int ,int *) ;
 int STREAM_TO_BDADDR (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_sec_link_key_notification (int ,int ,int ) ;

__attribute__((used)) static void btu_hcif_link_key_notification_evt (UINT8 *p)
{
    BD_ADDR bda;
    LINK_KEY key;
    UINT8 key_type;

    STREAM_TO_BDADDR (bda, p);
    STREAM_TO_ARRAY16 (key, p);
    STREAM_TO_UINT8 (key_type, p);

    btm_sec_link_key_notification (bda, key, key_type);
}
