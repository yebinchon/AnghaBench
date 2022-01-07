
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int joydata_t ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef int CFTypeRef ;
typedef scalar_t__ CFTypeID ;
typedef TYPE_1__ CFRange ;
typedef int CFMutableDictionaryRef ;


 int CFArrayApplyFunction (int ,TYPE_1__,int *,void*) ;
 int CFArrayGetCount (int ) ;
 scalar_t__ CFArrayGetTypeID () ;
 int CFDictionaryGetValue (int ,int ) ;
 scalar_t__ CFGetTypeID (int ) ;
 int CFSTR (int ) ;
 int joy_elem_array_hnd ;
 int kIOHIDElementKey ;

__attribute__((used)) static void joy_find_elements(CFMutableDictionaryRef prop, joydata_t *joy) {
    CFTypeRef elem;
    CFTypeID type;

    if((elem = CFDictionaryGetValue(prop, CFSTR(kIOHIDElementKey)))) {
        type = CFGetTypeID(elem);

        if(type == CFArrayGetTypeID()) {

            CFRange r = { 0, CFArrayGetCount(elem) };
            CFArrayApplyFunction(elem, r, &joy_elem_array_hnd, (void *)joy);
        }
    }
}
