; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_exi_stop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_exi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bba_priv = type { i32 }

@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_2 = common dso_local global i32 0, align 4
@__bba_exi_unlockcb = common dso_local global i32 0, align 4
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"__bba_exi_wait(exi locked)\0A\00", align 1
@wait_exi_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bba_priv*)* @__bba_exi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bba_exi_stop(%struct.bba_priv* %0) #0 {
  %2 = alloca %struct.bba_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.bba_priv* %0, %struct.bba_priv** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @_CPU_ISR_Disable(i32 %4)
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i32, i32* @EXI_CHANNEL_0, align 4
  %8 = load i32, i32* @EXI_DEVICE_2, align 4
  %9 = load i32, i32* @__bba_exi_unlockcb, align 4
  %10 = call i64 @EXI_Lock(i32 %7, i32 %8, i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i32, i32* @NETIF_DEBUG, align 4
  %14 = or i32 %13, 1
  %15 = call i32 @LWIP_DEBUGF(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @wait_exi_queue, align 4
  %17 = call i32 @LWP_ThreadSleep(i32 %16)
  br label %6

18:                                               ; preds = %6
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @_CPU_ISR_Restore(i32 %19)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i64 @EXI_Lock(i32, i32, i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWP_ThreadSleep(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
