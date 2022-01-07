; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_pitch_vector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_pitch_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float*, i32, i32, float*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 (float*, float*, i32, i32, i32, i32, i32)* }
%struct.TYPE_7__ = type { i64, i32 }

@MODE_8k85 = common dso_local global i32 0, align 4
@ac_inter = common dso_local global i32 0, align 4
@LP_ORDER = common dso_local global i32 0, align 4
@AMRWB_SFR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @decode_pitch_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_pitch_vector(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load float*, float** %13, align 8
  store float* %14, float** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @MODE_8k85, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @decode_pitch_lag_low(i32* %7, i32* %8, i32 %24, i32* %26, i32 %27, i32 %28)
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 5
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @decode_pitch_lag_high(i32* %7, i32* %8, i32 %33, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %21
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (float*, float*, i32, i32, i32, i32, i32)*, i32 (float*, float*, i32, i32, i32, i32, i32)** %49, align 8
  %51 = load float*, float** %10, align 8
  %52 = load float*, float** %10, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds float, float* %53, i64 %56
  %58 = load i32, i32* @ac_inter, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 4
  %64 = add nsw i32 %59, %63
  %65 = load i32, i32* @LP_ORDER, align 4
  %66 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 %50(float* %51, float* %57, i32 %58, i32 4, i32 %64, i32 %65, i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %38
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load float*, float** %75, align 8
  %77 = load float*, float** %10, align 8
  %78 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(float* %76, float* %77, i32 %81)
  br label %134

83:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %121, %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %124

88:                                               ; preds = %84
  %89 = load float*, float** %10, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %89, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fpext float %94 to double
  %96 = fmul double 1.800000e-01, %95
  %97 = load float*, float** %10, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fpext float %101 to double
  %103 = fmul double 6.400000e-01, %102
  %104 = fadd double %96, %103
  %105 = load float*, float** %10, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %105, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fpext float %110 to double
  %112 = fmul double 1.800000e-01, %111
  %113 = fadd double %104, %112
  %114 = fptrunc double %113 to float
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load float*, float** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  store float %114, float* %120, align 4
  br label %121

121:                                              ; preds = %88
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %84

124:                                              ; preds = %84
  %125 = load float*, float** %10, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load float*, float** %127, align 8
  %129 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memcpy(float* %125, float* %128, i32 %132)
  br label %134

134:                                              ; preds = %124, %73
  ret void
}

declare dso_local i32 @decode_pitch_lag_low(i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @decode_pitch_lag_high(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
