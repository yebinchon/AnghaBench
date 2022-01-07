; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitSpecularDir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitSpecularDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_litobj = type { float, float, float, float, float, float }

@LARGE_NUMBER = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitSpecularDir(i32* %0, float %1, float %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.__gx_litobj*, align 8
  store i32* %0, i32** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.__gx_litobj*
  store %struct.__gx_litobj* %18, %struct.__gx_litobj** %16, align 8
  %19 = load float, float* %6, align 4
  %20 = fneg float %19
  store float %20, float* %12, align 4
  %21 = load float, float* %7, align 4
  %22 = fneg float %21
  store float %22, float* %13, align 4
  %23 = load float, float* %8, align 4
  %24 = fneg float %23
  %25 = fadd float %24, 1.000000e+00
  store float %25, float* %14, align 4
  %26 = load float, float* %12, align 4
  %27 = load float, float* %12, align 4
  %28 = fmul float %26, %27
  %29 = load float, float* %13, align 4
  %30 = load float, float* %13, align 4
  %31 = fmul float %29, %30
  %32 = fadd float %28, %31
  %33 = load float, float* %14, align 4
  %34 = load float, float* %14, align 4
  %35 = fmul float %33, %34
  %36 = fadd float %32, %35
  store float %36, float* %15, align 4
  %37 = load float, float* %15, align 4
  %38 = fcmp une float %37, 0.000000e+00
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load float, float* %15, align 4
  %41 = call float @sqrtf(float %40) #2
  %42 = fdiv float 1.000000e+00, %41
  store float %42, float* %15, align 4
  br label %43

43:                                               ; preds = %39, %4
  %44 = load float, float* %15, align 4
  %45 = load float, float* %12, align 4
  %46 = fmul float %45, %44
  store float %46, float* %12, align 4
  %47 = load float, float* %15, align 4
  %48 = load float, float* %13, align 4
  %49 = fmul float %48, %47
  store float %49, float* %13, align 4
  %50 = load float, float* %15, align 4
  %51 = load float, float* %14, align 4
  %52 = fmul float %51, %50
  store float %52, float* %14, align 4
  %53 = load float, float* %6, align 4
  %54 = load float, float* @LARGE_NUMBER, align 4
  %55 = fmul float %53, %54
  store float %55, float* %9, align 4
  %56 = load float, float* %7, align 4
  %57 = load float, float* @LARGE_NUMBER, align 4
  %58 = fmul float %56, %57
  store float %58, float* %10, align 4
  %59 = load float, float* %8, align 4
  %60 = load float, float* @LARGE_NUMBER, align 4
  %61 = fmul float %59, %60
  store float %61, float* %11, align 4
  %62 = load float, float* %9, align 4
  %63 = load %struct.__gx_litobj*, %struct.__gx_litobj** %16, align 8
  %64 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %63, i32 0, i32 0
  store float %62, float* %64, align 4
  %65 = load float, float* %10, align 4
  %66 = load %struct.__gx_litobj*, %struct.__gx_litobj** %16, align 8
  %67 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %66, i32 0, i32 1
  store float %65, float* %67, align 4
  %68 = load float, float* %11, align 4
  %69 = load %struct.__gx_litobj*, %struct.__gx_litobj** %16, align 8
  %70 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %69, i32 0, i32 2
  store float %68, float* %70, align 4
  %71 = load float, float* %12, align 4
  %72 = load %struct.__gx_litobj*, %struct.__gx_litobj** %16, align 8
  %73 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %72, i32 0, i32 3
  store float %71, float* %73, align 4
  %74 = load float, float* %13, align 4
  %75 = load %struct.__gx_litobj*, %struct.__gx_litobj** %16, align 8
  %76 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %75, i32 0, i32 4
  store float %74, float* %76, align 4
  %77 = load float, float* %14, align 4
  %78 = load %struct.__gx_litobj*, %struct.__gx_litobj** %16, align 8
  %79 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %78, i32 0, i32 5
  store float %77, float* %79, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
