; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_cmdfinish.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_cmdfinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_state = type { i32, i32, i32, i32 (i32, i32)*, i32 }

@ERR_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_state*, i32)* @__bte_cmdfinish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bte_cmdfinish(%struct.bt_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bt_state* %0, %struct.bt_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bt_state*, %struct.bt_state** %4, align 8
  %8 = icmp ne %struct.bt_state* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ERR_VAL, align 4
  store i32 %10, i32* %3, align 4
  br label %41

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @_CPU_ISR_Disable(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.bt_state*, %struct.bt_state** %4, align 8
  %16 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.bt_state*, %struct.bt_state** %4, align 8
  %18 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.bt_state*, %struct.bt_state** %4, align 8
  %20 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %19, i32 0, i32 3
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = icmp ne i32 (i32, i32)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %11
  %24 = load %struct.bt_state*, %struct.bt_state** %4, align 8
  %25 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %24, i32 0, i32 3
  %26 = load i32 (i32, i32)*, i32 (i32, i32)** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.bt_state*, %struct.bt_state** %4, align 8
  %29 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %26(i32 %27, i32 %30)
  br label %37

32:                                               ; preds = %11
  %33 = load %struct.bt_state*, %struct.bt_state** %4, align 8
  %34 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LWP_ThreadSignal(i32 %35)
  br label %37

37:                                               ; preds = %32, %23
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @_CPU_ISR_Restore(i32 %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @LWP_ThreadSignal(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
