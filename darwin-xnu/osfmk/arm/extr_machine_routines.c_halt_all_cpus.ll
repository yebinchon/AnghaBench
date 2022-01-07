; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_halt_all_cpus.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_halt_all_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"MACH Reboot\0A\00", align 1
@kPERestartCPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"CPU halted\0A\00", align 1
@kPEHaltCPU = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @halt_all_cpus(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @kPERestartCPU, align 4
  %8 = call i32 @PEHaltRestart(i32 %7)
  br label %13

9:                                                ; preds = %1
  %10 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @kPEHaltCPU, align 4
  %12 = call i32 @PEHaltRestart(i32 %11)
  br label %13

13:                                               ; preds = %9, %5
  br label %14

14:                                               ; preds = %13, %14
  br label %14
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @PEHaltRestart(i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
