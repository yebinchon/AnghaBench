
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccfree (void* const) ;

__attribute__((used)) static void _ccv_cnnp_tuple_deinit(void* const data, void* const context)
{
 ccfree(data);
}
