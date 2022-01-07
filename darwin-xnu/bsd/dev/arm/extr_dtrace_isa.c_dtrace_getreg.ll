; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_getreg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regs = type { i32 }
%struct.arm_saved_state = type { i32 }

@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@ARM_SAVED_STATE32_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_getreg(%struct.regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arm_saved_state*, align 8
  store %struct.regs* %0, %struct.regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regs*, %struct.regs** %4, align 8
  %8 = bitcast %struct.regs* %7 to %struct.arm_saved_state*
  store %struct.arm_saved_state* %8, %struct.arm_saved_state** %6, align 8
  %9 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %10 = icmp eq %struct.arm_saved_state* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %13 = call i32 @DTRACE_CPUFLAG_SET(i32 %12)
  store i32 0, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ARM_SAVED_STATE32_COUNT, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %21 = call i32 @DTRACE_CPUFLAG_SET(i32 %20)
  store i32 0, i32* %3, align 4
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %24 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %19, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
