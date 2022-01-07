
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN76496 {double UpdateStep; double SampleRate; } ;


 scalar_t__ STEP ;

__attribute__((used)) static void SN76496_set_clock(struct SN76496 *R,int clock)
{







 R->UpdateStep = ((double)STEP * R->SampleRate * 16) / clock;
}
