
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gxfifo {scalar_t__ buf_start; scalar_t__ buf_end; } ;


 int _cpufifo ;
 int _gpfifo ;
 int _gxcpufifoready ;
 int _gxgpfifoready ;

__attribute__((used)) static u32 __GX_CPGPLinkCheck()
{
 struct __gxfifo *gpfifo = (struct __gxfifo*)&_gpfifo;
 struct __gxfifo *cpufifo = (struct __gxfifo*)&_cpufifo;

 if(!_gxcpufifoready || !_gxgpfifoready) return 0;

 if((cpufifo->buf_start==gpfifo->buf_start)&&(cpufifo->buf_end==gpfifo->buf_end)) return 1;

 return 0;
}
