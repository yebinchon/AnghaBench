; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_nightmare.c_calculate_loss.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_nightmare.c_calculate_loss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate_loss(float* %0, float* %1, i32 %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %12 = load float*, float** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call float @mean_array(float* %12, i32 %13)
  store float %14, float* %10, align 4
  %15 = load float*, float** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call float @variance_array(float* %15, i32 %16)
  store float %17, float* %11, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %51, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load float*, float** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = load float, float* %10, align 4
  %29 = load float, float* %8, align 4
  %30 = load float, float* %11, align 4
  %31 = call float @sqrt(float %30)
  %32 = fmul float %29, %31
  %33 = fadd float %28, %32
  %34 = fcmp ogt float %27, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = load float*, float** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  store float %40, float* %44, align 4
  br label %50

45:                                               ; preds = %22
  %46 = load float*, float** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  store float 0.000000e+00, float* %49, align 4
  br label %50

50:                                               ; preds = %45, %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %18

54:                                               ; preds = %18
  ret void
}

declare dso_local float @mean_array(float*, i32) #1

declare dso_local float @variance_array(float*, i32) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
