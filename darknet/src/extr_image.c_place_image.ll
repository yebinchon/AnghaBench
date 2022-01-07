; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_place_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_place_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @place_image(i64 %0, float %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, float %7) #0 {
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca { i64, float }, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca { i64, float }, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca { i64, float }, align 4
  %24 = alloca { i64, float }, align 4
  %25 = getelementptr inbounds { i64, float }, { i64, float }* %10, i32 0, i32 0
  store i64 %0, i64* %25, align 4
  %26 = getelementptr inbounds { i64, float }, { i64, float }* %10, i32 0, i32 1
  store float %1, float* %26, align 4
  %27 = bitcast %struct.TYPE_6__* %9 to i8*
  %28 = bitcast { i64, float }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  %29 = getelementptr inbounds { i64, float }, { i64, float }* %12, i32 0, i32 0
  store i64 %6, i64* %29, align 4
  %30 = getelementptr inbounds { i64, float }, { i64, float }* %12, i32 0, i32 1
  store float %7, float* %30, align 4
  %31 = bitcast %struct.TYPE_6__* %11 to i8*
  %32 = bitcast { i64, float }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 12, i1 false)
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %33

33:                                               ; preds = %98, %8
  %34 = load i32, i32* %19, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %101

38:                                               ; preds = %33
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %94, %38
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %97

43:                                               ; preds = %39
  store i32 0, i32* %17, align 4
  br label %44

44:                                               ; preds = %90, %43
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %93

48:                                               ; preds = %44
  %49 = load i32, i32* %17, align 4
  %50 = sitofp i32 %49 to float
  %51 = load i32, i32* %13, align 4
  %52 = sitofp i32 %51 to float
  %53 = fdiv float %50, %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = fmul float %53, %55
  store float %56, float* %20, align 4
  %57 = load i32, i32* %18, align 4
  %58 = sitofp i32 %57 to float
  %59 = load i32, i32* %14, align 4
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %58, %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %63 = load float, float* %62, align 4
  %64 = fmul float %61, %63
  store float %64, float* %21, align 4
  %65 = load float, float* %20, align 4
  %66 = load float, float* %21, align 4
  %67 = load i32, i32* %19, align 4
  %68 = bitcast { i64, float }* %23 to i8*
  %69 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 12, i1 false)
  %70 = getelementptr inbounds { i64, float }, { i64, float }* %23, i32 0, i32 0
  %71 = load i64, i64* %70, align 4
  %72 = getelementptr inbounds { i64, float }, { i64, float }* %23, i32 0, i32 1
  %73 = load float, float* %72, align 4
  %74 = call float @bilinear_interpolate(i64 %71, float %73, float %65, float %66, i32 %67)
  store float %74, float* %22, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %19, align 4
  %82 = load float, float* %22, align 4
  %83 = bitcast { i64, float }* %24 to i8*
  %84 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 12, i1 false)
  %85 = getelementptr inbounds { i64, float }, { i64, float }* %24, i32 0, i32 0
  %86 = load i64, i64* %85, align 4
  %87 = getelementptr inbounds { i64, float }, { i64, float }* %24, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = call i32 @set_pixel(i64 %86, float %88, i32 %77, i32 %80, i32 %81, float %82)
  br label %90

90:                                               ; preds = %48
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %44

93:                                               ; preds = %44
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %18, align 4
  br label %39

97:                                               ; preds = %39
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %19, align 4
  br label %33

101:                                              ; preds = %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @bilinear_interpolate(i64, float, float, float, i32) #2

declare dso_local i32 @set_pixel(i64, float, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
