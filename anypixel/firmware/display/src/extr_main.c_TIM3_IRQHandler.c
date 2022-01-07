
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int FanCapture ;
 int FanLastIrq ;
 int LocalTime ;
 scalar_t__ SET ;
 int TIM3 ;
 int TIM_ClearITPendingBit (int ,int ) ;
 void* TIM_GetCapture1 (int ) ;
 scalar_t__ TIM_GetITStatus (int ,int ) ;
 int TIM_IT_CC1 ;
 int captureCounter ;
 void** captures ;

void TIM3_IRQHandler(void) {
    static uint16_t CaptureNumber = 0;
    static uint16_t inval1, inval2;
    if(TIM_GetITStatus(TIM3, TIM_IT_CC1) == SET) {
        captures[captureCounter++ % 32] = TIM_GetCapture1(TIM3);

        TIM_ClearITPendingBit(TIM3, TIM_IT_CC1);
        if(CaptureNumber == 0) {
            inval1 = TIM_GetCapture1(TIM3);
            CaptureNumber = 1;
        }
        else if(CaptureNumber == 1) {
            inval2 = TIM_GetCapture1(TIM3);
            if(inval2 < inval1)
                FanCapture = (0xFFFF - inval1) - inval2;
            else
                FanCapture = inval2 - inval1;
            CaptureNumber = 0;
        }
        FanLastIrq = LocalTime;
    }
}
