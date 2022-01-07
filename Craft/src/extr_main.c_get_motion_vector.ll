; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_get_motion_vector.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_get_motion_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_motion_vector(i32 %0, i32 %1, i32 %2, float %3, float %4, float* %5, float* %6, float* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %20 = load float*, float** %14, align 8
  store float 0.000000e+00, float* %20, align 4
  %21 = load float*, float** %15, align 8
  store float 0.000000e+00, float* %21, align 4
  %22 = load float*, float** %16, align 8
  store float 0.000000e+00, float* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %82

29:                                               ; preds = %25, %8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call float @atan2f(i32 %30, i32 %31)
  store float %32, float* %17, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %29
  %36 = load float, float* %13, align 4
  %37 = call float @cosf(float %36) #3
  store float %37, float* %18, align 4
  %38 = load float, float* %13, align 4
  %39 = call float @sinf(float %38) #3
  store float %39, float* %19, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store float 0.000000e+00, float* %19, align 4
  br label %46

46:                                               ; preds = %45, %42
  store float 1.000000e+00, float* %18, align 4
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load float, float* %19, align 4
  %52 = fneg float %51
  store float %52, float* %19, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load float, float* %12, align 4
  %55 = load float, float* %17, align 4
  %56 = fadd float %54, %55
  %57 = call float @cosf(float %56) #3
  %58 = load float, float* %18, align 4
  %59 = fmul float %57, %58
  %60 = load float*, float** %14, align 8
  store float %59, float* %60, align 4
  %61 = load float, float* %19, align 4
  %62 = load float*, float** %15, align 8
  store float %61, float* %62, align 4
  %63 = load float, float* %12, align 4
  %64 = load float, float* %17, align 4
  %65 = fadd float %63, %64
  %66 = call float @sinf(float %65) #3
  %67 = load float, float* %18, align 4
  %68 = fmul float %66, %67
  %69 = load float*, float** %16, align 8
  store float %68, float* %69, align 4
  br label %82

70:                                               ; preds = %29
  %71 = load float, float* %12, align 4
  %72 = load float, float* %17, align 4
  %73 = fadd float %71, %72
  %74 = call float @cosf(float %73) #3
  %75 = load float*, float** %14, align 8
  store float %74, float* %75, align 4
  %76 = load float*, float** %15, align 8
  store float 0.000000e+00, float* %76, align 4
  %77 = load float, float* %12, align 4
  %78 = load float, float* %17, align 4
  %79 = fadd float %77, %78
  %80 = call float @sinf(float %79) #3
  %81 = load float*, float** %16, align 8
  store float %80, float* %81, align 4
  br label %82

82:                                               ; preds = %28, %70, %53
  ret void
}

declare dso_local float @atan2f(i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
