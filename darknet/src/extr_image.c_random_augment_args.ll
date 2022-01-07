; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_random_augment_args.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_random_augment_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, i32, i32, float, float, float, i32 }
%struct.TYPE_5__ = type { float, float }

@TWO_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_augment_args(%struct.TYPE_6__* noalias sret %0, <2 x float> %1, float %2, float %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = bitcast %struct.TYPE_5__* %9 to <2 x float>*
  store <2 x float> %1, <2 x float>* %22, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 %7, i32* %15, align 4
  %23 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 32, i1 false)
  %24 = load float, float* %11, align 4
  %25 = call float @rand_scale(float %24)
  store float %25, float* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @rand_int(i32 %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %30 = load float, float* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = load float, float* %11, align 4
  %34 = fmul float %32, %33
  %35 = fcmp olt float %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %38 = load float, float* %37, align 4
  br label %44

39:                                               ; preds = %8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = load float, float* %11, align 4
  %43 = fmul float %41, %42
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi float [ %38, %36 ], [ %43, %39 ]
  %46 = fptosi float %45 to i32
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  %48 = sitofp i32 %47 to float
  %49 = load i32, i32* %17, align 4
  %50 = sitofp i32 %49 to float
  %51 = fdiv float %48, %50
  store float %51, float* %18, align 4
  %52 = load float, float* %10, align 4
  %53 = fneg float %52
  %54 = load float, float* %10, align 4
  %55 = call i32 @rand_uniform(float %53, float %54)
  %56 = load i32, i32* @TWO_PI, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %58, 3.600000e+02
  %60 = fptrunc double %59 to float
  store float %60, float* %19, align 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %62 = load float, float* %61, align 4
  %63 = load float, float* %18, align 4
  %64 = fmul float %62, %63
  %65 = load float, float* %11, align 4
  %66 = fdiv float %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = sitofp i32 %67 to float
  %69 = fsub float %66, %68
  %70 = fpext float %69 to double
  %71 = fdiv double %70, 2.000000e+00
  %72 = fptrunc double %71 to float
  store float %72, float* %20, align 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %74 = load float, float* %73, align 4
  %75 = load float, float* %18, align 4
  %76 = fmul float %74, %75
  %77 = load i32, i32* %14, align 4
  %78 = sitofp i32 %77 to float
  %79 = fsub float %76, %78
  %80 = fpext float %79 to double
  %81 = fdiv double %80, 2.000000e+00
  %82 = fptrunc double %81 to float
  store float %82, float* %21, align 4
  %83 = load float, float* %20, align 4
  %84 = fneg float %83
  %85 = load float, float* %20, align 4
  %86 = call i32 @rand_uniform(float %84, float %85)
  %87 = sitofp i32 %86 to float
  store float %87, float* %20, align 4
  %88 = load float, float* %21, align 4
  %89 = fneg float %88
  %90 = load float, float* %21, align 4
  %91 = call i32 @rand_uniform(float %89, float %90)
  %92 = sitofp i32 %91 to float
  store float %92, float* %21, align 4
  %93 = load float, float* %19, align 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store float %93, float* %94, align 4
  %95 = load float, float* %18, align 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store float %95, float* %96, align 4
  %97 = load i32, i32* %14, align 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %15, align 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  %101 = load float, float* %20, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  store float %101, float* %102, align 4
  %103 = load float, float* %21, align 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  store float %103, float* %104, align 4
  %105 = load float, float* %11, align 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  store float %105, float* %106, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local float @rand_scale(float) #2

declare dso_local i32 @rand_int(i32, i32) #2

declare dso_local i32 @rand_uniform(float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
