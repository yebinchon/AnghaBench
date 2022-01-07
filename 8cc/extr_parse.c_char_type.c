
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;






 int error (char*) ;
 int * type_int ;
 int * type_uint ;
 int * type_ushort ;

__attribute__((used)) static Type *char_type(int enc) {
    switch (enc) {
    case 129:
    case 128:
        return type_int;
    case 131:
        return type_ushort;
    case 130:
        return type_uint;
    }
    error("internal error");
}
