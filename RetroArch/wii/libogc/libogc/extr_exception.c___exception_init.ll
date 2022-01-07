; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c___exception_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c___exception_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_EXCEPTIONS = common dso_local global i64 0, align 8
@exceptionhandler_start = common dso_local global i64 0, align 8
@exceptionhandler_end = common dso_local global i64 0, align 8
@exceptionhandler_patch = common dso_local global i32 0, align 4
@default_exceptionhandler = common dso_local global i32 0, align 4
@EX_FP = common dso_local global i64 0, align 8
@fpu_exceptionhandler = common dso_local global i32 0, align 4
@EX_INT = common dso_local global i64 0, align 8
@irq_exceptionhandler = common dso_local global i32 0, align 4
@EX_DEC = common dso_local global i64 0, align 8
@dec_exceptionhandler = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__exception_init() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @NUM_EXCEPTIONS, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @exceptionhandler_start, align 8
  %9 = load i64, i64* @exceptionhandler_end, align 8
  %10 = load i64, i64* @exceptionhandler_start, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i32, i32* @exceptionhandler_patch, align 4
  %13 = call i32 @__exception_load(i64 %7, i64 %8, i64 %11, i32 %12)
  %14 = load i64, i64* %1, align 8
  %15 = load i32, i32* @default_exceptionhandler, align 4
  %16 = call i32 @__exception_sethandler(i64 %14, i32 %15)
  br label %17

17:                                               ; preds = %6
  %18 = load i64, i64* %1, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %1, align 8
  br label %2

20:                                               ; preds = %2
  %21 = load i64, i64* @EX_FP, align 8
  %22 = load i32, i32* @fpu_exceptionhandler, align 4
  %23 = call i32 @__exception_sethandler(i64 %21, i32 %22)
  %24 = load i64, i64* @EX_INT, align 8
  %25 = load i32, i32* @irq_exceptionhandler, align 4
  %26 = call i32 @__exception_sethandler(i64 %24, i32 %25)
  %27 = load i64, i64* @EX_DEC, align 8
  %28 = load i32, i32* @dec_exceptionhandler, align 4
  %29 = call i32 @__exception_sethandler(i64 %27, i32 %28)
  %30 = call i32 (...) @mfmsr()
  %31 = load i32, i32* @MSR_RI, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @mtmsr(i32 %32)
  ret void
}

declare dso_local i32 @__exception_load(i64, i64, i64, i32) #1

declare dso_local i32 @__exception_sethandler(i64, i32) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfmsr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
