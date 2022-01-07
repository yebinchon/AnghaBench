; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_tx_stop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_tx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bba_priv = type { i64, i32 }

@ERR_TXPENDING = common dso_local global i64 0, align 8
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"__bba_tx_stop(pending tx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bba_priv*)* @__bba_tx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bba_tx_stop(%struct.bba_priv* %0) #0 {
  %2 = alloca %struct.bba_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.bba_priv* %0, %struct.bba_priv** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @_CPU_ISR_Disable(i32 %4)
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.bba_priv*, %struct.bba_priv** %2, align 8
  %8 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ERR_TXPENDING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load i32, i32* @NETIF_DEBUG, align 4
  %14 = call i32 @LWIP_DEBUGF(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.bba_priv*, %struct.bba_priv** %2, align 8
  %16 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @LWP_ThreadSleep(i32 %17)
  br label %6

19:                                               ; preds = %6
  %20 = load i64, i64* @ERR_TXPENDING, align 8
  %21 = load %struct.bba_priv*, %struct.bba_priv** %2, align 8
  %22 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @_CPU_ISR_Restore(i32 %23)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWP_ThreadSleep(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
