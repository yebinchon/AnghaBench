; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_find_kern_regs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_find_kern_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_saved_state = type { i32 }
%struct.TYPE_2__ = type { %struct.arm_saved_state* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arm_saved_state* @find_kern_regs(i64 %0) #0 {
  %2 = alloca %struct.arm_saved_state*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 (...) @current_thread()
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = call %struct.TYPE_2__* (...) @getCpuDatap()
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %11 = icmp eq %struct.arm_saved_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store %struct.arm_saved_state* null, %struct.arm_saved_state** %2, align 8
  br label %17

13:                                               ; preds = %7
  %14 = call %struct.TYPE_2__* (...) @getCpuDatap()
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.arm_saved_state*, %struct.arm_saved_state** %15, align 8
  store %struct.arm_saved_state* %16, %struct.arm_saved_state** %2, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load %struct.arm_saved_state*, %struct.arm_saved_state** %2, align 8
  ret %struct.arm_saved_state* %18
}

declare dso_local i64 @current_thread(...) #1

declare dso_local %struct.TYPE_2__* @getCpuDatap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
