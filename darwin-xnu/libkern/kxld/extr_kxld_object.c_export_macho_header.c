
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u_long ;
typedef int u_int ;
typedef int const u_char ;
typedef int kern_return_t ;
typedef int KXLDObject ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int KXLD_3264_FUNC (int ,int ,int ,int ,int const*,int const*,int ,int const*,int const) ;
 int check (int const*) ;
 int export_macho_header_32 ;
 int export_macho_header_64 ;
 int finish ;
 int kxld_object_is_32_bit (int const*) ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static kern_return_t
export_macho_header(const KXLDObject *object, u_char *buf, u_int ncmds,
    u_long *header_offset, u_long header_size)
{
    kern_return_t rval = KERN_FAILURE;

    check(object);
    check(buf);
    check(header_offset);

    KXLD_3264_FUNC(kxld_object_is_32_bit(object), rval,
        export_macho_header_32, export_macho_header_64,
        object, buf, ncmds, header_offset, header_size);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;

finish:
   return rval;
}
