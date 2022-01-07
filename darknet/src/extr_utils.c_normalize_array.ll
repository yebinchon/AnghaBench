; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_utils.c_normalize_array.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_utils.c_normalize_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @normalize_array(float* %0, i32 %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load float*, float** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call float @mean_array(float* %8, i32 %9)
  store float %10, float* %6, align 4
  %11 = load float*, float** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @variance_array(float* %11, i32 %12)
  %14 = call float @sqrt(i32 %13)
  store float %14, float* %7, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %33, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load float*, float** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load float, float* %6, align 4
  %26 = fsub float %24, %25
  %27 = load float, float* %7, align 4
  %28 = fdiv float %26, %27
  %29 = load float*, float** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  store float %28, float* %32, align 4
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load float*, float** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call float @mean_array(float* %37, i32 %38)
  store float %39, float* %6, align 4
  %40 = load float*, float** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @variance_array(float* %40, i32 %41)
  %43 = call float @sqrt(i32 %42)
  store float %43, float* %7, align 4
  ret void
}

declare dso_local float @mean_array(float*, i32) #1

declare dso_local float @sqrt(i32) #1

declare dso_local i32 @variance_array(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
