
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVHWDeviceContext ;


 int MFX_IMPL_HARDWARE_ANY ;
 int qsv_device_derive_from_child (int *,int ,int *,int) ;

__attribute__((used)) static int qsv_device_derive(AVHWDeviceContext *ctx,
                             AVHWDeviceContext *child_device_ctx, int flags)
{
    return qsv_device_derive_from_child(ctx, MFX_IMPL_HARDWARE_ANY,
                                        child_device_ctx, flags);
}
