
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unpack_user ;


 int UNEXPECTED (char*) ;

__attribute__((used)) static inline int unpack_callback_bin(unpack_user* u, const char* b, const char* p, unsigned int length)
{
    (void)u; (void)b; (void)p; (void)length;
    UNEXPECTED("bin");
    return 0;
}
