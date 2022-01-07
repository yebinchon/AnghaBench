; ModuleID = '/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_progress_step.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_progress_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progress_full = common dso_local global i64 0, align 8
@progress_printed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memtest_progress_step(i64 %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @progress_full, align 8
  %11 = mul i64 %9, %10
  %12 = load i64, i64* %5, align 8
  %13 = udiv i64 %11, %12
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %23, %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @progress_printed, align 8
  %18 = sub i64 %16, %17
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i8, i8* %6, align 1
  %22 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %21)
  br label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %8, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* @progress_printed, align 8
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @fflush(i32 %28)
  ret void
}

declare dso_local i32 @printf(i8*, i8 signext) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
