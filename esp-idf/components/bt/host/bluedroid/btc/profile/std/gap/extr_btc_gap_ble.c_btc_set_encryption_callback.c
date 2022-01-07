
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_TRANSPORT ;
typedef int tBTA_STATUS ;
typedef int BD_ADDR ;


 int BTC_TRACE_DEBUG (char*,int ) ;
 int UNUSED (int ) ;

__attribute__((used)) static void btc_set_encryption_callback(BD_ADDR bd_addr, tBTA_TRANSPORT transport, tBTA_STATUS enc_status)
{
    UNUSED(bd_addr);
    UNUSED(transport);
    BTC_TRACE_DEBUG("enc_status = %x\n", enc_status);
    return;
}
