
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unpack_user ;
typedef int int8_t ;


 int unpack_callback_uint64 (int *,int ) ;

__attribute__((used)) static inline int unpack_callback_int8(unpack_user* u, int8_t d)
{
    return unpack_callback_uint64(u, d);
}
