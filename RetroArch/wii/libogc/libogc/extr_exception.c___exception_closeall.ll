; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c___exception_closeall.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c___exception_closeall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_EE = common dso_local global i32 0, align 4
@MSR_FP = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@NUM_EXCEPTIONS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__exception_closeall() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @mfmsr()
  %3 = load i32, i32* @MSR_EE, align 4
  %4 = xor i32 %3, -1
  %5 = and i32 %2, %4
  %6 = call i32 @mtmsr(i32 %5)
  %7 = call i32 (...) @mfmsr()
  %8 = load i32, i32* @MSR_FP, align 4
  %9 = load i32, i32* @MSR_RI, align 4
  %10 = or i32 %8, %9
  %11 = or i32 %7, %10
  %12 = call i32 @mtmsr(i32 %11)
  store i64 0, i64* %1, align 8
  br label %13

13:                                               ; preds = %20, %0
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @NUM_EXCEPTIONS, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @__exception_close(i64 %18)
  br label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %1, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %1, align 8
  br label %13

23:                                               ; preds = %13
  ret void
}

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @__exception_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
