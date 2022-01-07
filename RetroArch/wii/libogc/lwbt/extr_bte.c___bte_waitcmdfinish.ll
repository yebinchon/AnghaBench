; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_waitcmdfinish.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_waitcmdfinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_state = type { i32, i32, i32 }

@ERR_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_state*)* @__bte_waitcmdfinish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bte_waitcmdfinish(%struct.bt_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bt_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bt_state* %0, %struct.bt_state** %3, align 8
  %6 = load %struct.bt_state*, %struct.bt_state** %3, align 8
  %7 = icmp ne %struct.bt_state* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ERR_VAL, align 4
  store i32 %9, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @_CPU_ISR_Disable(i32 %11)
  br label %13

13:                                               ; preds = %19, %10
  %14 = load %struct.bt_state*, %struct.bt_state** %3, align 8
  %15 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.bt_state*, %struct.bt_state** %3, align 8
  %21 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @LWP_ThreadSleep(i32 %22)
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.bt_state*, %struct.bt_state** %3, align 8
  %26 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @_CPU_ISR_Restore(i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @LWP_ThreadSleep(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
