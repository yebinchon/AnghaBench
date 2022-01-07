
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 unsigned int FF_ARRAY_ELEMS (unsigned int*) ;
 int SEEK_SET ;
 unsigned int TIFF_STRING ;
 int bytestream2_seek (int *,unsigned int,int ) ;
 int bytestream2_tell (int *) ;
 unsigned int ff_tget_long (int *,int) ;
 unsigned int ff_tget_short (int *,int) ;
 int ff_tis_ifd (unsigned int) ;
 unsigned int* type_sizes ;

int ff_tread_tag(GetByteContext *gb, int le, unsigned *tag, unsigned *type,
                 unsigned *count, int *next)
{
    int ifd_tag;
    int valid_type;

    *tag = ff_tget_short(gb, le);
    *type = ff_tget_short(gb, le);
    *count = ff_tget_long (gb, le);

    ifd_tag = ff_tis_ifd(*tag);
    valid_type = *type != 0 && *type < FF_ARRAY_ELEMS(type_sizes);

    *next = bytestream2_tell(gb) + 4;


    if (!valid_type) {
        return AVERROR_INVALIDDATA;
    }



    if (ifd_tag || (*count > 4 || !(type_sizes[*type] * (*count) <= 4 || *type == TIFF_STRING))) {
        bytestream2_seek(gb, ff_tget_long (gb, le), SEEK_SET);
    }

    return 0;
}
