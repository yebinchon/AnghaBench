
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kern_return_t ;


 scalar_t__ ERR_SUCCESS ;
 char* mach_error_string (scalar_t__) ;
 int printf (char*,char const*,int,char const*,char*) ;

__attribute__((used)) static inline bool _reportResult(kern_return_t result, const char *operation, const char* file, int line) {
    if ( result != ERR_SUCCESS ) {
        printf("%s:%d: %s: %s\n", file, line, operation, mach_error_string(result));
        return 0;
    }
    return 1;
}
