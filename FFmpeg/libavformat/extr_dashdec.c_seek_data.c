
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct representation {int input; int init_sec_data_len; scalar_t__ n_fragments; } ;
typedef int int64_t ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int avio_seek (int ,int ,int) ;

__attribute__((used)) static int64_t seek_data(void *opaque, int64_t offset, int whence)
{
    struct representation *v = opaque;
    if (v->n_fragments && !v->init_sec_data_len) {
        return avio_seek(v->input, offset, whence);
    }

    return AVERROR(ENOSYS);
}
