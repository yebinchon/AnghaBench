; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_transform_center_scale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_transform_center_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, float, float, float, float, float*)* @transform_center_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_center_scale(float %0, float %1, float %2, float %3, float %4, float %5, float %6, float* %7) #0 {
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float*, align 8
  %17 = alloca %struct.TYPE_3__, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca %struct.TYPE_3__, align 8
  store float %0, float* %9, align 4
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float* %7, float** %16, align 8
  %21 = load float, float* %12, align 4
  %22 = load float, float* %13, align 4
  %23 = load float*, float** %16, align 8
  %24 = call i32 @ff_get_matrix(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %21, float %22, float* %23)
  %25 = load float, float* %14, align 4
  %26 = load float, float* %15, align 4
  %27 = load float*, float** %16, align 8
  %28 = call float* @transformed_point(float %25, float %26, float* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store float* %28, float** %29, align 8
  %30 = bitcast %struct.TYPE_3__* %17 to i8*
  %31 = bitcast %struct.TYPE_3__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load float, float* %14, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = fsub float %32, %36
  store float %37, float* %18, align 4
  %38 = load float, float* %15, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %40 = load float*, float** %39, align 8
  %41 = getelementptr inbounds float, float* %40, i64 1
  %42 = load float, float* %41, align 4
  %43 = fsub float %38, %42
  store float %43, float* %19, align 4
  %44 = load float, float* %9, align 4
  %45 = load float, float* %18, align 4
  %46 = fadd float %44, %45
  %47 = load float, float* %10, align 4
  %48 = load float, float* %19, align 4
  %49 = fadd float %47, %48
  %50 = load float, float* %11, align 4
  %51 = load float, float* %12, align 4
  %52 = load float, float* %13, align 4
  %53 = load float*, float** %16, align 8
  %54 = call i32 @ff_get_matrix(float %46, float %49, float %50, float %51, float %52, float* %53)
  ret void
}

declare dso_local i32 @ff_get_matrix(float, float, float, float, float, float*) #1

declare dso_local float* @transformed_point(float, float, float*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
