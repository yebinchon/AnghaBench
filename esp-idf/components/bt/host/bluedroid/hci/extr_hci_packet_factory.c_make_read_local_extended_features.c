
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int BT_HDR ;


 int HCI_READ_LOCAL_EXT_FEATURES ;
 int UINT8_TO_STREAM (int*,int) ;
 int * make_command (int ,int const,int**) ;

__attribute__((used)) static BT_HDR *make_read_local_extended_features(uint8_t page_number)
{
    uint8_t *stream;
    const uint8_t parameter_size = 1;
    BT_HDR *packet = make_command(HCI_READ_LOCAL_EXT_FEATURES, parameter_size, &stream);

    UINT8_TO_STREAM(stream, page_number);
    return packet;
}
