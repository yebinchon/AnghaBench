; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_probe.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i32 }

@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_2 = common dso_local global i32 0, align 4
@BBA_CID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uip_netif*)* @bba_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bba_probe(%struct.uip_netif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uip_netif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %3, align 8
  %6 = load i32, i32* @EXI_CHANNEL_0, align 4
  %7 = load i32, i32* @EXI_DEVICE_2, align 4
  %8 = call i64 @EXI_Lock(i32 %6, i32 %7, i32* null)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = call i64 (...) @__bba_read_cid()
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @BBA_CID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EXI_CHANNEL_0, align 4
  %18 = call i32 @EXI_Unlock(i32 %17)
  store i32 -1, i32* %2, align 4
  br label %25

19:                                               ; preds = %11
  %20 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %21 = call i32 @bba_init_one(%struct.uip_netif* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @EXI_CHANNEL_0, align 4
  %23 = call i32 @EXI_Unlock(i32 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %16, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @EXI_Lock(i32, i32, i32*) #1

declare dso_local i64 @__bba_read_cid(...) #1

declare dso_local i32 @EXI_Unlock(i32) #1

declare dso_local i32 @bba_init_one(%struct.uip_netif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
