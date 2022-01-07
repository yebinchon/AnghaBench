
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int BT_HDR ;


 int HCI_HOST_BUFFER_SIZE ;
 int UINT16_TO_STREAM (int*,int ) ;
 int UINT8_TO_STREAM (int*,int) ;
 int * make_command (int ,int const,int**) ;

__attribute__((used)) static BT_HDR *make_host_buffer_size(uint16_t acl_size, uint8_t sco_size, uint16_t acl_count, uint16_t sco_count)
{
    uint8_t *stream;
    const uint8_t parameter_size = 2 + 1 + 2 + 2;
    BT_HDR *packet = make_command(HCI_HOST_BUFFER_SIZE, parameter_size, &stream);

    UINT16_TO_STREAM(stream, acl_size);
    UINT8_TO_STREAM(stream, sco_size);
    UINT16_TO_STREAM(stream, acl_count);
    UINT16_TO_STREAM(stream, sco_count);
    return packet;
}
