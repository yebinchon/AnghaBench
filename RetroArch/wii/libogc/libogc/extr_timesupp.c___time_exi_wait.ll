; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_timesupp.c___time_exi_wait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_timesupp.c___time_exi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_1 = common dso_local global i32 0, align 4
@__time_exi_unlock = common dso_local global i32 0, align 4
@time_exi_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__time_exi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__time_exi_wait() #0 {
  %1 = alloca i64, align 8
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* @EXI_CHANNEL_0, align 4
  %4 = load i32, i32* @EXI_DEVICE_1, align 4
  %5 = load i32, i32* @__time_exi_unlock, align 4
  %6 = call i64 @EXI_Lock(i32 %3, i32 %4, i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @time_exi_wait, align 4
  %11 = call i32 @LWP_ThreadSleep(i32 %10)
  br label %12

12:                                               ; preds = %9
  %13 = load i64, i64* %1, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %2, label %15

15:                                               ; preds = %12, %8
  ret void
}

declare dso_local i64 @EXI_Lock(i32, i32, i32) #1

declare dso_local i32 @LWP_ThreadSleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
