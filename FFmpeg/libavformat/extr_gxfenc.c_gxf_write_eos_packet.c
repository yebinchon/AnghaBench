
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVIOContext ;


 int PKT_EOS ;
 int avio_tell (int *) ;
 int gxf_write_packet_header (int *,int ) ;
 int updatePacketSize (int *,int ) ;

__attribute__((used)) static int gxf_write_eos_packet(AVIOContext *pb)
{
    int64_t pos = avio_tell(pb);

    gxf_write_packet_header(pb, PKT_EOS);
    return updatePacketSize(pb, pos);
}
