
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unpack_user ;


 int UNEXPECTED (char*) ;

__attribute__((used)) static inline int unpack_callback_float(unpack_user* u, float d)
{
    (void)d;
    UNEXPECTED("float");
    return 0;
}
