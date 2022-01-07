
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int buttons_count; int buttons; int name; } ;
typedef TYPE_1__ joydata_t ;
typedef int joy_elemdata_t ;
typedef int io_object_t ;
typedef scalar_t__ SInt32 ;
typedef scalar_t__ CFTypeRef ;
typedef int CFStringRef ;
typedef int CFNumberRef ;
typedef int CFMutableDictionaryRef ;


 scalar_t__ CFDictionaryGetValue (int ,int ) ;
 int CFNumberGetValue (int ,int ,scalar_t__*) ;
 int CFRelease (int ) ;
 int CFSTR (int ) ;
 int CFStringGetCString (int ,int ,int,int ) ;
 scalar_t__ IORegistryEntryCreateCFProperties (int ,int *,int ,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int joy_cmp_buttons ;
 int joy_count ;
 int joy_create_interface (int ,TYPE_1__*) ;
 int joy_find_elements (int ,TYPE_1__*) ;
 TYPE_1__* joys ;
 int kCFAllocatorDefault ;
 int kCFNumberSInt32Type ;
 int kCFStringEncodingUTF8 ;
 scalar_t__ kHIDPage_GenericDesktop ;
 scalar_t__ kHIDUsage_GD_GamePad ;
 scalar_t__ kHIDUsage_GD_Joystick ;
 int kIOHIDPrimaryUsageKey ;
 int kIOHIDPrimaryUsagePageKey ;
 int kIOHIDProductKey ;
 int kNilOptions ;
 int memset (TYPE_1__*,int ,int) ;
 int qsort (int ,int ,int,int *) ;
 void* realloc (TYPE_1__*,int) ;

__attribute__((used)) static void joy_read_device(io_object_t dev) {
    CFMutableDictionaryRef props = 0;


    if(IORegistryEntryCreateCFProperties(dev, &props, kCFAllocatorDefault,
                                         kNilOptions) == KERN_SUCCESS) {
        CFTypeRef inf;
        SInt32 page, usage;
        void *ptr;


        inf = CFDictionaryGetValue(props, CFSTR(kIOHIDPrimaryUsagePageKey));

        if(!inf || !CFNumberGetValue((CFNumberRef)inf, kCFNumberSInt32Type,
                                     &page)) {
            goto out;
        }


        if(page != kHIDPage_GenericDesktop) {
            goto out;
        }


        inf = CFDictionaryGetValue(props, CFSTR(kIOHIDPrimaryUsageKey));

        if(!inf || !CFNumberGetValue((CFNumberRef)inf, kCFNumberSInt32Type,
                                     &usage)) {
            goto out;
        }


        if(usage != kHIDUsage_GD_GamePad && usage != kHIDUsage_GD_Joystick) {
            goto out;
        }


        ptr = realloc(joys, (joy_count + 1) * sizeof(joydata_t));

        if(ptr == ((void*)0)) {
            goto out;
        }

        joys = (joydata_t *)ptr;
        memset(joys + joy_count, 0, sizeof(joydata_t));


        inf = CFDictionaryGetValue(props, CFSTR(kIOHIDProductKey));

        if(!CFStringGetCString((CFStringRef)inf, joys[joy_count].name, 256,
                               kCFStringEncodingUTF8)) {
            goto out;
        }


        if(!joy_create_interface(dev, joys + joy_count)) {
            goto out;
        }


        joy_find_elements(props, joys + joy_count);

        qsort(joys[joy_count].buttons, joys[joy_count].buttons_count,
              sizeof(joy_elemdata_t), &joy_cmp_buttons);

        ++joy_count;
    }

out:
    CFRelease(props);
}
