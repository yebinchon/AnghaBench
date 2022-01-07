
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unpack_user ;
typedef int uint32_t ;


 int unpack_callback_uint64 (int *,int ) ;

__attribute__((used)) static inline int unpack_callback_uint32(unpack_user* u, uint32_t d)
{
    return unpack_callback_uint64(u, d);
}
