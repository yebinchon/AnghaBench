
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum TiffType { ____Placeholder_TiffType } TiffType ;
struct TYPE_3__ {int tiff_type; } ;
typedef TYPE_1__ TiffContext ;



__attribute__((used)) static void tiff_set_type(TiffContext *s, enum TiffType tiff_type) {
    if (s->tiff_type < tiff_type)
        s->tiff_type = tiff_type;
}
