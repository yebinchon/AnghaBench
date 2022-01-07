; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_benchmark.c_time_blitter.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_benchmark.c_time_blitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_blitter.end_time = internal global i64 0, align 8
@time_blitter.count = internal global i32 0, align 4
@CLOCKS_PER_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Insufficient time resolution\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Performance: %d frames per second, which would use %d%% CPU at 60 FPS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @time_blitter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_blitter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 4, i32* %2, align 4
  %5 = load i32, i32* @time_blitter.count, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @clock()
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %13, %7
  %10 = call i64 (...) @clock()
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %9

14:                                               ; preds = %9
  %15 = call i64 (...) @clock()
  %16 = load i64, i64* %3, align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i64, i64* @CLOCKS_PER_SEC, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %42

22:                                               ; preds = %14
  %23 = call i64 (...) @clock()
  %24 = load i64, i64* @CLOCKS_PER_SEC, align 8
  %25 = mul nsw i64 %24, 4
  %26 = add nsw i64 %23, %25
  store i64 %26, i64* @time_blitter.end_time, align 8
  br label %39

27:                                               ; preds = %0
  %28 = call i64 (...) @clock()
  %29 = load i64, i64* @time_blitter.end_time, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @time_blitter.count, align 4
  %33 = sdiv i32 %32, 4
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 6000, %35
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  store i32 0, i32* %1, align 4
  br label %42

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* @time_blitter.count, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @time_blitter.count, align 4
  store i32 1, i32* %1, align 4
  br label %42

42:                                               ; preds = %39, %31, %20
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i64 @clock(...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
