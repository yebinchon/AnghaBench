
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hv_support_available ;

int
hv_get_support(void) {
 return hv_support_available;
}
