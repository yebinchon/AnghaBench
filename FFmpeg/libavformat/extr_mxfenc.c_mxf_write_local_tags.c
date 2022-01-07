
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uid; int local_tag; } ;
typedef TYPE_1__ MXFLocalTagPair ;
typedef int AVIOContext ;


 int avio_wb16 (int *,int ) ;
 int avio_write (int *,int ,int) ;

__attribute__((used)) static void mxf_write_local_tags(AVIOContext *pb, const MXFLocalTagPair *local_tags, int count)
{
    int i;
    for (i = 0; i < count; i++) {
        avio_wb16(pb, local_tags[i].local_tag);
        avio_write(pb, local_tags[i].uid, 16);
    }
}
