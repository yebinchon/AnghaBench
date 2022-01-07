; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_models.c_centre_and_rescale.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_models.c_centre_and_rescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32)* @centre_and_rescale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @centre_and_rescale(float* %0, i32 %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  %20 = load float*, float** %3, align 8
  store float* %20, float** %16, align 8
  %21 = load float*, float** %3, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  %23 = load float, float* %22, align 4
  store float %23, float* %12, align 4
  store float %23, float* %9, align 4
  %24 = load float*, float** %3, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  store float %26, float* %13, align 4
  store float %26, float* %10, align 4
  %27 = load float*, float** %3, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  store float %29, float* %14, align 4
  store float %29, float* %11, align 4
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %71, %2
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load float*, float** %16, align 8
  %36 = getelementptr inbounds float, float* %35, i32 1
  store float* %36, float** %16, align 8
  %37 = load float, float* %35, align 4
  store float %37, float* %17, align 4
  %38 = load float*, float** %16, align 8
  %39 = getelementptr inbounds float, float* %38, i32 1
  store float* %39, float** %16, align 8
  %40 = load float, float* %38, align 4
  store float %40, float* %18, align 4
  %41 = load float*, float** %16, align 8
  %42 = getelementptr inbounds float, float* %41, i32 1
  store float* %42, float** %16, align 8
  %43 = load float, float* %41, align 4
  store float %43, float* %19, align 4
  %44 = load float, float* %9, align 4
  %45 = load float, float* %17, align 4
  %46 = call float @vcos_min(float %44, float %45)
  store float %46, float* %9, align 4
  %47 = load float, float* %10, align 4
  %48 = load float, float* %18, align 4
  %49 = call float @vcos_min(float %47, float %48)
  store float %49, float* %10, align 4
  %50 = load float, float* %11, align 4
  %51 = load float, float* %19, align 4
  %52 = call float @vcos_min(float %50, float %51)
  store float %52, float* %11, align 4
  %53 = load float, float* %12, align 4
  %54 = load float, float* %17, align 4
  %55 = call float @vcos_max(float %53, float %54)
  store float %55, float* %12, align 4
  %56 = load float, float* %13, align 4
  %57 = load float, float* %18, align 4
  %58 = call float @vcos_max(float %56, float %57)
  store float %58, float* %13, align 4
  %59 = load float, float* %14, align 4
  %60 = load float, float* %19, align 4
  %61 = call float @vcos_max(float %59, float %60)
  store float %61, float* %14, align 4
  %62 = load float, float* %17, align 4
  %63 = load float, float* %5, align 4
  %64 = fadd float %63, %62
  store float %64, float* %5, align 4
  %65 = load float, float* %18, align 4
  %66 = load float, float* %6, align 4
  %67 = fadd float %66, %65
  store float %67, float* %6, align 4
  %68 = load float, float* %19, align 4
  %69 = load float, float* %7, align 4
  %70 = fadd float %69, %68
  store float %70, float* %7, align 4
  br label %71

71:                                               ; preds = %34
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %30

74:                                               ; preds = %30
  %75 = load i32, i32* %4, align 4
  %76 = sitofp i32 %75 to float
  %77 = load float, float* %5, align 4
  %78 = fdiv float %77, %76
  store float %78, float* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sitofp i32 %79 to float
  %81 = load float, float* %6, align 4
  %82 = fdiv float %81, %80
  store float %82, float* %6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = sitofp i32 %83 to float
  %85 = load float, float* %7, align 4
  %86 = fdiv float %85, %84
  store float %86, float* %7, align 4
  %87 = load float, float* %12, align 4
  %88 = load float, float* %9, align 4
  %89 = fsub float %87, %88
  %90 = load float, float* %13, align 4
  %91 = fadd float %89, %90
  %92 = load float, float* %10, align 4
  %93 = fsub float %91, %92
  %94 = load float, float* %14, align 4
  %95 = fadd float %93, %94
  %96 = load float, float* %11, align 4
  %97 = fsub float %95, %96
  %98 = fdiv float 3.000000e+00, %97
  store float %98, float* %8, align 4
  %99 = load float*, float** %3, align 8
  store float* %99, float** %16, align 8
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %132, %74
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %135

104:                                              ; preds = %100
  %105 = load float*, float** %16, align 8
  %106 = load float, float* %105, align 4
  %107 = load float, float* %5, align 4
  %108 = fsub float %106, %107
  %109 = load float, float* %8, align 4
  %110 = fmul float %108, %109
  %111 = load float*, float** %16, align 8
  store float %110, float* %111, align 4
  %112 = load float*, float** %16, align 8
  %113 = getelementptr inbounds float, float* %112, i32 1
  store float* %113, float** %16, align 8
  %114 = load float*, float** %16, align 8
  %115 = load float, float* %114, align 4
  %116 = load float, float* %6, align 4
  %117 = fsub float %115, %116
  %118 = load float, float* %8, align 4
  %119 = fmul float %117, %118
  %120 = load float*, float** %16, align 8
  store float %119, float* %120, align 4
  %121 = load float*, float** %16, align 8
  %122 = getelementptr inbounds float, float* %121, i32 1
  store float* %122, float** %16, align 8
  %123 = load float*, float** %16, align 8
  %124 = load float, float* %123, align 4
  %125 = load float, float* %7, align 4
  %126 = fsub float %124, %125
  %127 = load float, float* %8, align 4
  %128 = fmul float %126, %127
  %129 = load float*, float** %16, align 8
  store float %128, float* %129, align 4
  %130 = load float*, float** %16, align 8
  %131 = getelementptr inbounds float, float* %130, i32 1
  store float* %131, float** %16, align 8
  br label %132

132:                                              ; preds = %104
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %100

135:                                              ; preds = %100
  ret void
}

declare dso_local float @vcos_min(float, float) #1

declare dso_local float @vcos_max(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
