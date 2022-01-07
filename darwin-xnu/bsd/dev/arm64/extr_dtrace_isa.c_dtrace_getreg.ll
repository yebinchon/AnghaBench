; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_isa.c_dtrace_getreg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_isa.c_dtrace_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regs = type { i32 }
%struct.arm_saved_state = type { i32 }

@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@ARM_FP = common dso_local global i32 0, align 4
@ARM_SP = common dso_local global i32 0, align 4
@ARM_LR = common dso_local global i32 0, align 4
@ARM_PC = common dso_local global i32 0, align 4
@ARM_CPSR = common dso_local global i32 0, align 4

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
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %16 = call i64 @is_saved_state32(%struct.arm_saved_state* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %30 [
    i32 131, label %20
    i32 128, label %22
    i32 130, label %24
    i32 129, label %26
    i32 132, label %28
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @ARM_FP, align 4
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %18
  %23 = load i32, i32* @ARM_SP, align 4
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @ARM_LR, align 4
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @ARM_PC, align 4
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @ARM_CPSR, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %18, %28, %26, %24, %22, %20
  br label %31

31:                                               ; preds = %30, %14
  %32 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @check_saved_state_reglimit(%struct.arm_saved_state* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %38 = call i32 @DTRACE_CPUFLAG_SET(i32 %37)
  store i32 0, i32* %3, align 4
  br label %44

39:                                               ; preds = %31
  %40 = load %struct.arm_saved_state*, %struct.arm_saved_state** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @get_saved_state_reg(%struct.arm_saved_state* %40, i32 %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %36, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i64 @is_saved_state32(%struct.arm_saved_state*) #1

declare dso_local i32 @check_saved_state_reglimit(%struct.arm_saved_state*, i32) #1

declare dso_local i64 @get_saved_state_reg(%struct.arm_saved_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
