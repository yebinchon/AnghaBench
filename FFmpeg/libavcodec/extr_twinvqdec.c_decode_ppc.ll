; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvqdec.c_decode_ppc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvqdec.c_decode_ppc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@TWINVQ_PGAIN_MU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, float*, float*)* @decode_ppc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ppc(%struct.TYPE_7__* %0, i32 %1, i32 %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %11, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 1000
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 1000, %39
  %41 = sdiv i32 %34, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 80, %44
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @ROUNDED_DIV(i32 %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 80, %50
  %52 = mul nsw i32 %51, 6
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ROUNDED_DIV(i32 %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 1, %60
  %62 = sub nsw i32 %61, 1
  %63 = sitofp i32 %62 to double
  %64 = fdiv double 2.500000e+04, %63
  %65 = fptrunc double %64 to float
  store float %65, float* %17, align 4
  %66 = load float, float* %17, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sitofp i32 %67 to float
  %69 = fmul float %66, %68
  %70 = load float, float* %17, align 4
  %71 = fdiv float %70, 2.000000e+00
  %72 = fadd float %69, %71
  %73 = load i32, i32* @TWINVQ_PGAIN_MU, align 4
  %74 = call double @twinvq_mulawinv(float %72, double 2.500000e+04, i32 %73)
  %75 = fmul double 0x3F20000000000000, %74
  %76 = fptrunc double %75 to float
  store float %76, float* %18, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %16, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 1, %83
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @ROUNDED_DIV(i32 %80, i32 %85)
  %87 = add nsw i32 %77, %86
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, 22
  br i1 %89, label %90, label %105

90:                                               ; preds = %5
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, 800
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 400, %102
  %104 = call i32 @ROUNDED_DIV(i32 %99, i32 %103)
  store i32 %104, i32* %20, align 4
  br label %116

105:                                              ; preds = %90, %5
  %106 = load i32, i32* %19, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 400, %113
  %115 = sdiv i32 %110, %114
  store i32 %115, i32* %20, align 4
  br label %116

116:                                              ; preds = %105, %93
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load float*, float** %9, align 8
  %120 = load float, float* %18, align 4
  %121 = load float*, float** %10, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @add_peak(i32 %117, i32 %118, float* %119, float %120, float* %121, i32 %124)
  ret void
}

declare dso_local i32 @ROUNDED_DIV(i32, i32) #1

declare dso_local double @twinvq_mulawinv(float, double, i32) #1

declare dso_local i32 @add_peak(i32, i32, float*, float, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
