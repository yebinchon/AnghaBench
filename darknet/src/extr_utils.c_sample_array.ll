; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_utils.c_sample_array.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_utils.c_sample_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sample_array(float* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load float*, float** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call float @sum_array(float* %9, i32 %10)
  store float %11, float* %6, align 4
  %12 = load float*, float** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load float, float* %6, align 4
  %15 = fpext float %14 to double
  %16 = fdiv double 1.000000e+00, %15
  %17 = fptosi double %16 to i32
  %18 = call i32 @scale_array(float* %12, i32 %13, i32 %17)
  %19 = call float @rand_uniform(i32 0, i32 1)
  store float %19, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %37, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load float, float* %7, align 4
  %26 = load float*, float** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fsub float %25, %30
  store float %31, float* %7, align 4
  %32 = load float, float* %7, align 4
  %33 = fcmp ole float %32, 0.000000e+00
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local float @sum_array(float*, i32) #1

declare dso_local i32 @scale_array(float*, i32, i32) #1

declare dso_local float @rand_uniform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
