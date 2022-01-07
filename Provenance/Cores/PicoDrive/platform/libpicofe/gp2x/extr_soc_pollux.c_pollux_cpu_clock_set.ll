; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_pollux.c_pollux_cpu_clock_set.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_pollux.c_pollux_cpu_clock_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_clock_allowed = common dso_local global i32 0, align 4
@memregl = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"clock set to %dMHz, AHB set to %dMHz\0A\00", align 1
@SYS_CLK_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pollux_cpu_clock_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @cpu_clock_allowed, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %86

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (...) @pollux_cpu_clock_get()
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %86

19:                                               ; preds = %14
  store i32 9, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %22, 27
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, -1024
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %86

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 18
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 8
  %33 = or i32 %30, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %10, align 4
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %42, %28
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sdiv i32 %37, %38
  %40 = icmp sgt i32 %39, 250
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %36

45:                                               ; preds = %36
  %46 = load i32*, i32** @memregl, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 15360
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, -961
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %51, 1
  %53 = shl i32 %52, 6
  %54 = or i32 %50, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** @memregl, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 15360
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** @memregl, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 15361
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** @memregl, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 15391
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 32768
  store i32 %64, i32* %62, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %77, %45
  %66 = load i32*, i32** @memregl, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 15391
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 32768
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 1048576
  br label %74

74:                                               ; preds = %71, %65
  %75 = phi i1 [ false, %65 ], [ %73, %71 ]
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %65

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = sdiv i32 %82, %83
  %85 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %27, %18, %13
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pollux_cpu_clock_get(...) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
