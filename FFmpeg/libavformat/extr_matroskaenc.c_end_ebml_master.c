
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ sizebytes; scalar_t__ pos; } ;
typedef TYPE_1__ ebml_master ;
typedef int AVIOContext ;


 int SEEK_SET ;
 scalar_t__ avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 int put_ebml_num (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void end_ebml_master(AVIOContext *pb, ebml_master master)
{
    int64_t pos = avio_tell(pb);

    if (avio_seek(pb, master.pos - master.sizebytes, SEEK_SET) < 0)
        return;
    put_ebml_num(pb, pos - master.pos, master.sizebytes);
    avio_seek(pb, pos, SEEK_SET);
}
