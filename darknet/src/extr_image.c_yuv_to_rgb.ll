; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_yuv_to_rgb.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_yuv_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yuv_to_rgb(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca { i64, i32 }, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %0, i64* %19, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %1, i32* %20, align 4
  %21 = bitcast %struct.TYPE_5__* %3 to i8*
  %22 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 3
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %126, %2
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %129

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %122, %33
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %125

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = bitcast { i64, i32 }* %13 to i8*
  %43 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 12, i1 false)
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %45 = load i64, i64* %44, align 4
  %46 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call float @get_pixel(i64 %45, i32 %47, i32 %40, i32 %41, i32 0)
  store float %48, float* %10, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = bitcast { i64, i32 }* %14 to i8*
  %52 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 12, i1 false)
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %54 = load i64, i64* %53, align 4
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call float @get_pixel(i64 %54, i32 %56, i32 %49, i32 %50, i32 1)
  store float %57, float* %11, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = bitcast { i64, i32 }* %15 to i8*
  %61 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 12, i1 false)
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %63 = load i64, i64* %62, align 4
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call float @get_pixel(i64 %63, i32 %65, i32 %58, i32 %59, i32 2)
  store float %66, float* %12, align 4
  %67 = load float, float* %10, align 4
  %68 = fpext float %67 to double
  %69 = load float, float* %12, align 4
  %70 = fpext float %69 to double
  %71 = fmul double 1.139830e+00, %70
  %72 = fadd double %68, %71
  %73 = fptrunc double %72 to float
  store float %73, float* %7, align 4
  %74 = load float, float* %10, align 4
  %75 = fpext float %74 to double
  %76 = load float, float* %11, align 4
  %77 = fpext float %76 to double
  %78 = fmul double -3.946500e-01, %77
  %79 = fadd double %75, %78
  %80 = load float, float* %12, align 4
  %81 = fpext float %80 to double
  %82 = fmul double -5.806000e-01, %81
  %83 = fadd double %79, %82
  %84 = fptrunc double %83 to float
  store float %84, float* %8, align 4
  %85 = load float, float* %10, align 4
  %86 = fpext float %85 to double
  %87 = load float, float* %11, align 4
  %88 = fpext float %87 to double
  %89 = fmul double 2.032110e+00, %88
  %90 = fadd double %86, %89
  %91 = fptrunc double %90 to float
  store float %91, float* %9, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load float, float* %7, align 4
  %95 = bitcast { i64, i32 }* %16 to i8*
  %96 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 12, i1 false)
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %98 = load i64, i64* %97, align 4
  %99 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @set_pixel(i64 %98, i32 %100, i32 %92, i32 %93, i32 0, float %94)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load float, float* %8, align 4
  %105 = bitcast { i64, i32 }* %17 to i8*
  %106 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  %107 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %108 = load i64, i64* %107, align 4
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @set_pixel(i64 %108, i32 %110, i32 %102, i32 %103, i32 1, float %104)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load float, float* %9, align 4
  %115 = bitcast { i64, i32 }* %18 to i8*
  %116 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 12, i1 false)
  %117 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %118 = load i64, i64* %117, align 4
  %119 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @set_pixel(i64 %118, i32 %120, i32 %112, i32 %113, i32 2, float %114)
  br label %122

122:                                              ; preds = %39
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %34

125:                                              ; preds = %34
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %28

129:                                              ; preds = %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local float @get_pixel(i64, i32, i32, i32, i32) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
