; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_cube_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_cube_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float, float, i32, float*, float, float)* @cube_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cube_to_xyz(%struct.TYPE_3__* %0, float %1, float %2, i32 %3, float* %4, float %5, float %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store i32 %3, i32* %11, align 4
  store float* %4, float** %12, align 8
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load float, float* %13, align 4
  %27 = load float, float* %9, align 4
  %28 = fdiv float %27, %26
  store float %28, float* %9, align 4
  %29 = load float, float* %14, align 4
  %30 = load float, float* %10, align 4
  %31 = fdiv float %30, %29
  store float %31, float* %10, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rotate_cube_face_inverse(float* %9, float* %10, i32 %38)
  %40 = load i32, i32* %15, align 4
  switch i32 %40, label %66 [
    i32 129, label %41
    i32 130, label %45
    i32 128, label %50
    i32 132, label %54
    i32 131, label %57
    i32 133, label %61
  ]

41:                                               ; preds = %7
  store float 1.000000e+00, float* %16, align 4
  %42 = load float, float* %10, align 4
  %43 = fneg float %42
  store float %43, float* %17, align 4
  %44 = load float, float* %9, align 4
  store float %44, float* %18, align 4
  br label %68

45:                                               ; preds = %7
  store float -1.000000e+00, float* %16, align 4
  %46 = load float, float* %10, align 4
  %47 = fneg float %46
  store float %47, float* %17, align 4
  %48 = load float, float* %9, align 4
  %49 = fneg float %48
  store float %49, float* %18, align 4
  br label %68

50:                                               ; preds = %7
  %51 = load float, float* %9, align 4
  store float %51, float* %16, align 4
  store float 1.000000e+00, float* %17, align 4
  %52 = load float, float* %10, align 4
  %53 = fneg float %52
  store float %53, float* %18, align 4
  br label %68

54:                                               ; preds = %7
  %55 = load float, float* %9, align 4
  store float %55, float* %16, align 4
  store float -1.000000e+00, float* %17, align 4
  %56 = load float, float* %10, align 4
  store float %56, float* %18, align 4
  br label %68

57:                                               ; preds = %7
  %58 = load float, float* %9, align 4
  store float %58, float* %16, align 4
  %59 = load float, float* %10, align 4
  %60 = fneg float %59
  store float %60, float* %17, align 4
  store float -1.000000e+00, float* %18, align 4
  br label %68

61:                                               ; preds = %7
  %62 = load float, float* %9, align 4
  %63 = fneg float %62
  store float %63, float* %16, align 4
  %64 = load float, float* %10, align 4
  %65 = fneg float %64
  store float %65, float* %17, align 4
  store float 1.000000e+00, float* %18, align 4
  br label %68

66:                                               ; preds = %7
  %67 = call i32 @av_assert0(i32 0)
  br label %68

68:                                               ; preds = %66, %61, %57, %54, %50, %45, %41
  %69 = load float, float* %16, align 4
  %70 = load float*, float** %12, align 8
  %71 = getelementptr inbounds float, float* %70, i64 0
  store float %69, float* %71, align 4
  %72 = load float, float* %17, align 4
  %73 = load float*, float** %12, align 8
  %74 = getelementptr inbounds float, float* %73, i64 1
  store float %72, float* %74, align 4
  %75 = load float, float* %18, align 4
  %76 = load float*, float** %12, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  store float %75, float* %77, align 4
  %78 = load float*, float** %12, align 8
  %79 = call i32 @normalize_vector(float* %78)
  ret void
}

declare dso_local i32 @rotate_cube_face_inverse(float*, float*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @normalize_vector(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
