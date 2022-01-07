
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int min; int max; scalar_t__ cookie; } ;
typedef TYPE_1__ joy_elemdata_t ;
typedef scalar_t__ IOHIDElementCookie ;
typedef int CFTypeRef ;


 int CFDictionaryGetValue (int ,int ) ;
 scalar_t__ CFNumberGetValue (int ,int ,int*) ;
 int CFSTR (int ) ;
 int kCFNumberIntType ;
 int kIOHIDElementCookieKey ;
 int kIOHIDElementMaxKey ;
 int kIOHIDElementMinKey ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void joy_fill_elem(CFTypeRef elem, joy_elemdata_t *ptr) {
    CFTypeRef ref;
    int num;

    memset(ptr, 0, sizeof(joy_elemdata_t));


    if((ref = CFDictionaryGetValue(elem, CFSTR(kIOHIDElementCookieKey)))) {
        if(CFNumberGetValue(ref, kCFNumberIntType, &num)) {
            ptr->cookie = (IOHIDElementCookie)num;
        }
    }


    if((ref = CFDictionaryGetValue(elem, CFSTR(kIOHIDElementMinKey)))) {
        if(CFNumberGetValue(ref, kCFNumberIntType, &num)) {
            ptr->min = num;
        }
    }


    if((ref = CFDictionaryGetValue(elem, CFSTR(kIOHIDElementMaxKey)))) {
        if(CFNumberGetValue(ref, kCFNumberIntType, &num)) {
            ptr->max = num;
        }
    }
}
