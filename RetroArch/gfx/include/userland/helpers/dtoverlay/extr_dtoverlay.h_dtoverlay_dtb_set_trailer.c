
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trailer_len; scalar_t__ trailer_is_malloced; void* trailer; } ;
typedef TYPE_1__ DTBLOB_T ;



__attribute__((used)) static inline void dtoverlay_dtb_set_trailer(DTBLOB_T *dtb,
                                             void *trailer,
                                             int trailer_len)
{
    dtb->trailer = trailer;
    dtb->trailer_len = trailer_len;
    dtb->trailer_is_malloced = 0;
}
