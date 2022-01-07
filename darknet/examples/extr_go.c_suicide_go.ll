; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_suicide_go.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_suicide_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @suicide_go(float* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load float*, float** %5, align 8
  %12 = call i32* @calculate_liberties(float* %11)
  store i32* %12, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load float*, float** %5, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @makes_safe_go(float* %16, i32* %17, i32 %18, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %15, %4
  %25 = phi i1 [ true, %4 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load float*, float** %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @makes_safe_go(float* %30, i32* %31, i32 %32, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %29, %24
  %39 = phi i1 [ true, %24 ], [ %37, %29 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load float*, float** %5, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i64 @makes_safe_go(float* %44, i32* %45, i32 %46, i32 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %43, %38
  %53 = phi i1 [ true, %38 ], [ %51, %43 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load float*, float** %5, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call i64 @makes_safe_go(float* %58, i32* %59, i32 %60, i32 %61, i32 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %57, %52
  %67 = phi i1 [ true, %52 ], [ %65, %57 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @free(i32* %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  ret i32 %74
}

declare dso_local i32* @calculate_liberties(float*) #1

declare dso_local i64 @makes_safe_go(float*, i32*, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
