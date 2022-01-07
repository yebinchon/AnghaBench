
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trailer_len; } ;
typedef TYPE_1__ DTBLOB_T ;



__attribute__((used)) static inline int dtoverlay_dtb_trailer_len(DTBLOB_T *dtb)
{
    return dtb->trailer_len;
}
