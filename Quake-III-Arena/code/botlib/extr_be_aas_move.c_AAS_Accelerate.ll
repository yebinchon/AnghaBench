; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_move.c_AAS_Accelerate.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_move.c_AAS_Accelerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_Accelerate(float* %0, float %1, float* %2, float %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float %1, float* %7, align 4
  store float* %2, float** %8, align 8
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %15 = load float*, float** %6, align 8
  %16 = load float*, float** %8, align 8
  %17 = call float @DotProduct(float* %15, float* %16)
  store float %17, float* %14, align 4
  %18 = load float, float* %9, align 4
  %19 = load float, float* %14, align 4
  %20 = fsub float %18, %19
  store float %20, float* %12, align 4
  %21 = load float, float* %12, align 4
  %22 = fcmp ole float %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %56

24:                                               ; preds = %5
  %25 = load float, float* %10, align 4
  %26 = load float, float* %7, align 4
  %27 = fmul float %25, %26
  %28 = load float, float* %9, align 4
  %29 = fmul float %27, %28
  store float %29, float* %13, align 4
  %30 = load float, float* %13, align 4
  %31 = load float, float* %12, align 4
  %32 = fcmp ogt float %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load float, float* %12, align 4
  store float %34, float* %13, align 4
  br label %35

35:                                               ; preds = %33, %24
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load float, float* %13, align 4
  %41 = load float*, float** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fmul float %40, %45
  %47 = load float*, float** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fadd float %51, %46
  store float %52, float* %50, align 4
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %36

56:                                               ; preds = %23, %36
  ret void
}

declare dso_local float @DotProduct(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
