; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_rotate_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_rotate_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @rotate_image(i64 %0, i32 %1, float %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %20, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %21, align 4
  %22 = bitcast %struct.TYPE_7__* %5 to i8*
  %23 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  store float %2, float* %7, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 2.000000e+00
  %28 = fptrunc double %27 to float
  store float %28, float* %11, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 2.000000e+00
  %33 = fptrunc double %32 to float
  store float %33, float* %12, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call { i64, i32 } @make_image(i32 %35, i32 %37, i32 %39)
  store { i64, i32 } %40, { i64, i32 }* %13, align 8
  %41 = bitcast { i64, i32 }* %13 to i8*
  %42 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 8 %41, i64 12, i1 false)
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %128, %3
  %44 = load i32, i32* %10, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %131

48:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %124, %48
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %127

54:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %120, %54
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %123

60:                                               ; preds = %55
  %61 = load float, float* %7, align 4
  %62 = call i32 @cos(float %61)
  %63 = sitofp i32 %62 to float
  %64 = load i32, i32* %8, align 4
  %65 = sitofp i32 %64 to float
  %66 = load float, float* %11, align 4
  %67 = fsub float %65, %66
  %68 = fmul float %63, %67
  %69 = load float, float* %7, align 4
  %70 = call i32 @sin(float %69)
  %71 = sitofp i32 %70 to float
  %72 = load i32, i32* %9, align 4
  %73 = sitofp i32 %72 to float
  %74 = load float, float* %12, align 4
  %75 = fsub float %73, %74
  %76 = fmul float %71, %75
  %77 = fsub float %68, %76
  %78 = load float, float* %11, align 4
  %79 = fadd float %77, %78
  store float %79, float* %14, align 4
  %80 = load float, float* %7, align 4
  %81 = call i32 @sin(float %80)
  %82 = sitofp i32 %81 to float
  %83 = load i32, i32* %8, align 4
  %84 = sitofp i32 %83 to float
  %85 = load float, float* %11, align 4
  %86 = fsub float %84, %85
  %87 = fmul float %82, %86
  %88 = load float, float* %7, align 4
  %89 = call i32 @cos(float %88)
  %90 = sitofp i32 %89 to float
  %91 = load i32, i32* %9, align 4
  %92 = sitofp i32 %91 to float
  %93 = load float, float* %12, align 4
  %94 = fsub float %92, %93
  %95 = fmul float %90, %94
  %96 = fadd float %87, %95
  %97 = load float, float* %12, align 4
  %98 = fadd float %96, %97
  store float %98, float* %15, align 4
  %99 = load float, float* %14, align 4
  %100 = load float, float* %15, align 4
  %101 = load i32, i32* %10, align 4
  %102 = bitcast { i64, i32 }* %17 to i8*
  %103 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 12, i1 false)
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %105 = load i64, i64* %104, align 4
  %106 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call float @bilinear_interpolate(i64 %105, i32 %107, float %99, float %100, i32 %101)
  store float %108, float* %16, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load float, float* %16, align 4
  %113 = bitcast { i64, i32 }* %18 to i8*
  %114 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %113, i8* align 4 %114, i64 12, i1 false)
  %115 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %116 = load i64, i64* %115, align 4
  %117 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @set_pixel(i64 %116, i32 %118, i32 %109, i32 %110, i32 %111, float %112)
  br label %120

120:                                              ; preds = %60
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %55

123:                                              ; preds = %55
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %49

127:                                              ; preds = %49
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %43

131:                                              ; preds = %43
  %132 = bitcast { i64, i32 }* %19 to i8*
  %133 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 4 %133, i64 12, i1 false)
  %134 = load { i64, i32 }, { i64, i32 }* %19, align 8
  ret { i64, i32 } %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i32 } @make_image(i32, i32, i32) #2

declare dso_local i32 @cos(float) #2

declare dso_local i32 @sin(float) #2

declare dso_local float @bilinear_interpolate(i64, i32, float, float, i32) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
