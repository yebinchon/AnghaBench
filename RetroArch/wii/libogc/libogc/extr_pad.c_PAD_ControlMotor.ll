; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_PAD_ControlMotor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_PAD_ControlMotor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__pad_enabledbits = common dso_local global i32 0, align 4
@SI_GC_NOMOTOR = common dso_local global i32 0, align 4
@__pad_spec = common dso_local global i32 0, align 4
@PAD_MOTOR_STOP_HARD = common dso_local global i32 0, align 4
@__pad_analogmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PAD_ControlMotor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @_CPU_ISR_Disable(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @PAD_ENABLEDMASK(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @__pad_enabledbits, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @SI_GetType(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SI_GC_NOMOTOR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @__pad_spec, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PAD_MOTOR_STOP_HARD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %26, %23
  %32 = load i32, i32* @__pad_analogmode, align 4
  %33 = or i32 4194304, %32
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 3
  %36 = or i32 %33, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @SI_SetCommand(i32 %37, i32 %38)
  %40 = call i32 (...) @SI_TransferCommands()
  br label %41

41:                                               ; preds = %31, %16
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @_CPU_ISR_Restore(i32 %43)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @PAD_ENABLEDMASK(i32) #1

declare dso_local i32 @SI_GetType(i32) #1

declare dso_local i32 @SI_SetCommand(i32, i32) #1

declare dso_local i32 @SI_TransferCommands(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
