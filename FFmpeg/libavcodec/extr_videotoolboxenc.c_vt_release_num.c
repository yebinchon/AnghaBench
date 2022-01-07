
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * CFNumberRef ;


 int CFRelease (int *) ;

__attribute__((used)) static void vt_release_num(CFNumberRef* refPtr){
    if (!*refPtr) {
        return;
    }

    CFRelease(*refPtr);
    *refPtr = ((void*)0);
}
