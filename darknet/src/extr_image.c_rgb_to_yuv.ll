; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_rgb_to_yuv.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_rgb_to_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_to_yuv(i64 %0, i32 %1) #0 {
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

28:                                               ; preds = %137, %2
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %140

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %133, %33
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %136

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
  store float %48, float* %7, align 4
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
  store float %57, float* %8, align 4
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
  store float %66, float* %9, align 4
  %67 = load float, float* %7, align 4
  %68 = fpext float %67 to double
  %69 = fmul double 2.990000e-01, %68
  %70 = load float, float* %8, align 4
  %71 = fpext float %70 to double
  %72 = fmul double 5.870000e-01, %71
  %73 = fadd double %69, %72
  %74 = load float, float* %9, align 4
  %75 = fpext float %74 to double
  %76 = fmul double 1.140000e-01, %75
  %77 = fadd double %73, %76
  %78 = fptrunc double %77 to float
  store float %78, float* %10, align 4
  %79 = load float, float* %7, align 4
  %80 = fpext float %79 to double
  %81 = fmul double -1.471300e-01, %80
  %82 = load float, float* %8, align 4
  %83 = fpext float %82 to double
  %84 = fmul double -2.888600e-01, %83
  %85 = fadd double %81, %84
  %86 = load float, float* %9, align 4
  %87 = fpext float %86 to double
  %88 = fmul double 4.360000e-01, %87
  %89 = fadd double %85, %88
  %90 = fptrunc double %89 to float
  store float %90, float* %11, align 4
  %91 = load float, float* %7, align 4
  %92 = fpext float %91 to double
  %93 = fmul double 0x3FE3AE147AE147AE, %92
  %94 = load float, float* %8, align 4
  %95 = fpext float %94 to double
  %96 = fmul double -5.149900e-01, %95
  %97 = fadd double %93, %96
  %98 = load float, float* %9, align 4
  %99 = fpext float %98 to double
  %100 = fmul double -1.000100e-01, %99
  %101 = fadd double %97, %100
  %102 = fptrunc double %101 to float
  store float %102, float* %12, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load float, float* %10, align 4
  %106 = bitcast { i64, i32 }* %16 to i8*
  %107 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @set_pixel(i64 %109, i32 %111, i32 %103, i32 %104, i32 0, float %105)
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load float, float* %11, align 4
  %116 = bitcast { i64, i32 }* %17 to i8*
  %117 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 12, i1 false)
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %119 = load i64, i64* %118, align 4
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @set_pixel(i64 %119, i32 %121, i32 %113, i32 %114, i32 1, float %115)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load float, float* %12, align 4
  %126 = bitcast { i64, i32 }* %18 to i8*
  %127 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 %127, i64 12, i1 false)
  %128 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %129 = load i64, i64* %128, align 4
  %130 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @set_pixel(i64 %129, i32 %131, i32 %123, i32 %124, i32 2, float %125)
  br label %133

133:                                              ; preds = %39
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %34

136:                                              ; preds = %34
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %28

140:                                              ; preds = %28
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
