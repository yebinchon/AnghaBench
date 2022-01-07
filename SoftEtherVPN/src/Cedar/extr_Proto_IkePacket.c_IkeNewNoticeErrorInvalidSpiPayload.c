
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IKE_PACKET_PAYLOAD ;


 int Endian32 (int ) ;
 int IKE_NOTICE_ERROR_INVALID_SPI ;
 int IKE_PROTOCOL_ID_IPSEC_ESP ;
 int * IkeNewNoticePayload (int ,int ,int *,int,int *,int) ;

IKE_PACKET_PAYLOAD *IkeNewNoticeErrorInvalidSpiPayload(UINT spi)
{
 IKE_PACKET_PAYLOAD *ret;
 spi = Endian32(spi);

 ret = IkeNewNoticePayload(IKE_PROTOCOL_ID_IPSEC_ESP, IKE_NOTICE_ERROR_INVALID_SPI, &spi, sizeof(UINT),
  &spi, sizeof(UINT));

 return ret;
}
