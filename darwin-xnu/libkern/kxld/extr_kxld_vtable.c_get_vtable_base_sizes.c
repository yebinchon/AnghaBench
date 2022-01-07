
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ boolean_t ;


 int VTABLE_ENTRY_SIZE_32 ;
 int VTABLE_ENTRY_SIZE_64 ;
 int VTABLE_HEADER_SIZE_32 ;
 int VTABLE_HEADER_SIZE_64 ;
 int check (int *) ;

__attribute__((used)) static void
get_vtable_base_sizes(boolean_t is_32_bit, u_int *vtable_entry_size,
    u_int *vtable_header_size)
{
    check(vtable_entry_size);
    check(vtable_header_size);

    if (is_32_bit) {
        *vtable_entry_size = VTABLE_ENTRY_SIZE_32;
        *vtable_header_size = VTABLE_HEADER_SIZE_32;
    } else {
        *vtable_entry_size = VTABLE_ENTRY_SIZE_64;
        *vtable_header_size = VTABLE_HEADER_SIZE_64;
    }
}
