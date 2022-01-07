
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MOVContext ;
typedef int MOVAtom ;
typedef int AVIOContext ;


 int AV_CODEC_ID_JPEG2000 ;
 int mov_read_extradata (int *,int *,int ,int ) ;

__attribute__((used)) static int mov_read_jp2h(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    return mov_read_extradata(c, pb, atom, AV_CODEC_ID_JPEG2000);
}
