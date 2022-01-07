
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void null_hid_t ;


 scalar_t__ calloc (int,int) ;

__attribute__((used)) static void *null_hid_init(void)
{
   return (null_hid_t*)calloc(1, sizeof(null_hid_t));
}
