
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int BT_HDR ;


 int HCI_WRITE_SECURE_CONNS_SUPPORT ;
 int UINT8_TO_STREAM (int*,int) ;
 int * make_command (int ,int const,int**) ;

__attribute__((used)) static BT_HDR *make_write_secure_connections_host_support(uint8_t mode)
{
    uint8_t *stream;
    const uint8_t parameter_size = 1;
    BT_HDR *packet = make_command(HCI_WRITE_SECURE_CONNS_SUPPORT, parameter_size, &stream);

    UINT8_TO_STREAM(stream, mode);
    return packet;
}
