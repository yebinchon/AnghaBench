
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unpack_user ;


 int UNEXPECTED (char*) ;

__attribute__((used)) static inline int unpack_callback_double(unpack_user* u, double d)
{
    (void)d;
    UNEXPECTED("double");
    return 0;
}
