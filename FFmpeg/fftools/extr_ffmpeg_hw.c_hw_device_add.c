
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWDevice ;


 int * av_mallocz (int) ;
 int av_reallocp_array (int ***,int,int) ;
 int ** hw_devices ;
 int nb_hw_devices ;

__attribute__((used)) static HWDevice *hw_device_add(void)
{
    int err;
    err = av_reallocp_array(&hw_devices, nb_hw_devices + 1,
                            sizeof(*hw_devices));
    if (err) {
        nb_hw_devices = 0;
        return ((void*)0);
    }
    hw_devices[nb_hw_devices] = av_mallocz(sizeof(HWDevice));
    if (!hw_devices[nb_hw_devices])
        return ((void*)0);
    return hw_devices[nb_hw_devices++];
}
