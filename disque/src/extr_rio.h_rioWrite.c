
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t max_processing_chunk; scalar_t__ (* write ) (TYPE_1__*,void const*,size_t) ;size_t processed_bytes; int (* update_cksum ) (TYPE_1__*,void const*,size_t) ;} ;
typedef TYPE_1__ rio ;


 int stub1 (TYPE_1__*,void const*,size_t) ;
 scalar_t__ stub2 (TYPE_1__*,void const*,size_t) ;

__attribute__((used)) static inline size_t rioWrite(rio *r, const void *buf, size_t len) {
    while (len) {
        size_t bytes_to_write = (r->max_processing_chunk && r->max_processing_chunk < len) ? r->max_processing_chunk : len;
        if (r->update_cksum) r->update_cksum(r,buf,bytes_to_write);
        if (r->write(r,buf,bytes_to_write) == 0)
            return 0;
        buf = (char*)buf + bytes_to_write;
        len -= bytes_to_write;
        r->processed_bytes += bytes_to_write;
    }
    return 1;
}
