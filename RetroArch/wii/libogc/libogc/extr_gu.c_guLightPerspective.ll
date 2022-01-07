; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_guLightPerspective.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_guLightPerspective.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @guLightPerspective(float** %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca float**, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float** %0, float*** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %17 = load float, float* %9, align 4
  %18 = fmul float %17, 5.000000e-01
  store float %18, float* %15, align 4
  %19 = load float, float* %15, align 4
  %20 = call float @DegToRad(float %19)
  store float %20, float* %15, align 4
  %21 = load float, float* %15, align 4
  %22 = call float @tanf(float %21) #3
  %23 = fdiv float 1.000000e+00, %22
  store float %23, float* %16, align 4
  %24 = load float, float* %16, align 4
  %25 = load float, float* %10, align 4
  %26 = fdiv float %24, %25
  %27 = load float, float* %11, align 4
  %28 = fmul float %26, %27
  %29 = load float**, float*** %8, align 8
  %30 = getelementptr inbounds float*, float** %29, i64 0
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  store float %28, float* %32, align 4
  %33 = load float**, float*** %8, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 0
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  store float 0.000000e+00, float* %36, align 4
  %37 = load float, float* %13, align 4
  %38 = fneg float %37
  %39 = load float**, float*** %8, align 8
  %40 = getelementptr inbounds float*, float** %39, i64 0
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 2
  store float %38, float* %42, align 4
  %43 = load float**, float*** %8, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 0
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 3
  store float 0.000000e+00, float* %46, align 4
  %47 = load float**, float*** %8, align 8
  %48 = getelementptr inbounds float*, float** %47, i64 1
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  store float 0.000000e+00, float* %50, align 4
  %51 = load float, float* %16, align 4
  %52 = load float, float* %12, align 4
  %53 = fmul float %51, %52
  %54 = load float**, float*** %8, align 8
  %55 = getelementptr inbounds float*, float** %54, i64 1
  %56 = load float*, float** %55, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  store float %53, float* %57, align 4
  %58 = load float, float* %14, align 4
  %59 = fneg float %58
  %60 = load float**, float*** %8, align 8
  %61 = getelementptr inbounds float*, float** %60, i64 1
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  store float %59, float* %63, align 4
  %64 = load float**, float*** %8, align 8
  %65 = getelementptr inbounds float*, float** %64, i64 1
  %66 = load float*, float** %65, align 8
  %67 = getelementptr inbounds float, float* %66, i64 3
  store float 0.000000e+00, float* %67, align 4
  %68 = load float**, float*** %8, align 8
  %69 = getelementptr inbounds float*, float** %68, i64 2
  %70 = load float*, float** %69, align 8
  %71 = getelementptr inbounds float, float* %70, i64 0
  store float 0.000000e+00, float* %71, align 4
  %72 = load float**, float*** %8, align 8
  %73 = getelementptr inbounds float*, float** %72, i64 2
  %74 = load float*, float** %73, align 8
  %75 = getelementptr inbounds float, float* %74, i64 1
  store float 0.000000e+00, float* %75, align 4
  %76 = load float**, float*** %8, align 8
  %77 = getelementptr inbounds float*, float** %76, i64 2
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 2
  store float -1.000000e+00, float* %79, align 4
  %80 = load float**, float*** %8, align 8
  %81 = getelementptr inbounds float*, float** %80, i64 2
  %82 = load float*, float** %81, align 8
  %83 = getelementptr inbounds float, float* %82, i64 3
  store float 0.000000e+00, float* %83, align 4
  ret void
}

declare dso_local float @DegToRad(float) #1

; Function Attrs: nounwind
declare dso_local float @tanf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
