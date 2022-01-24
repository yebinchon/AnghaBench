#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {TYPE_1__* quantize; } ;
struct TYPE_5__ {int quantized_sample; } ;
typedef  TYPE_2__ Channel ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(Channel *channel, uint32_t codeword)
{
    channel->quantize[0].quantized_sample = FUNC1(codeword >>  0, 9);
    channel->quantize[1].quantized_sample = FUNC1(codeword >>  9, 6);
    channel->quantize[2].quantized_sample = FUNC1(codeword >> 15, 4);
    channel->quantize[3].quantized_sample = FUNC1(codeword >> 19, 5);
    channel->quantize[3].quantized_sample = (channel->quantize[3].quantized_sample & ~1)
                                          | FUNC0(channel);
}