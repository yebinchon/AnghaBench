; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_ColorToBytes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_ColorToBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ColorToBytes(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %7 = load float*, float** %3, align 8
  %8 = load float*, float** %6, align 8
  %9 = call i32 @VectorCopy(float* %7, float* %8)
  %10 = load float*, float** %6, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  store float %12, float* %5, align 4
  %13 = load float*, float** %6, align 8
  %14 = getelementptr inbounds float, float* %13, i64 1
  %15 = load float, float* %14, align 4
  %16 = load float, float* %5, align 4
  %17 = fcmp ogt float %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load float*, float** %6, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  %21 = load float, float* %20, align 4
  store float %21, float* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load float*, float** %6, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  %25 = load float, float* %24, align 4
  %26 = load float, float* %5, align 4
  %27 = fcmp ogt float %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load float*, float** %6, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  %31 = load float, float* %30, align 4
  store float %31, float* %5, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load float, float* %5, align 4
  %34 = fcmp ogt float %33, 2.550000e+02
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load float*, float** %6, align 8
  %37 = load float, float* %5, align 4
  %38 = fdiv float 2.550000e+02, %37
  %39 = fptosi float %38 to i32
  %40 = load float*, float** %6, align 8
  %41 = call i32 @VectorScale(float* %36, i32 %39, float* %40)
  br label %42

42:                                               ; preds = %35, %32
  %43 = load float*, float** %6, align 8
  %44 = getelementptr inbounds float, float* %43, i64 0
  %45 = load float, float* %44, align 4
  %46 = load float*, float** %4, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  store float %45, float* %47, align 4
  %48 = load float*, float** %6, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  %51 = load float*, float** %4, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  store float %50, float* %52, align 4
  %53 = load float*, float** %6, align 8
  %54 = getelementptr inbounds float, float* %53, i64 2
  %55 = load float, float* %54, align 4
  %56 = load float*, float** %4, align 8
  %57 = getelementptr inbounds float, float* %56, i64 2
  store float %55, float* %57, align 4
  ret void
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @VectorScale(float*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
