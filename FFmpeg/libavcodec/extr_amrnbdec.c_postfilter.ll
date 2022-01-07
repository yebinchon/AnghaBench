; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_postfilter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_postfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float*, i64, float*, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)* }
%struct.TYPE_6__ = type { float (float*, float*, i32)* }

@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@AMR_SUBFRAME_SIZE = common dso_local global i32 0, align 4
@MODE_12k2 = common dso_local global i64 0, align 8
@MODE_10k2 = common dso_local global i64 0, align 8
@ff_pow_0_7 = common dso_local global float* null, align 8
@ff_pow_0_75 = common dso_local global float* null, align 8
@ff_pow_0_55 = common dso_local global float* null, align 8
@AMR_AGC_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float*, float*)* @postfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postfilter(%struct.TYPE_8__* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load float*, float** %17, align 8
  %19 = load i32, i32* @LP_FILTER_ORDER, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  store float* %21, float** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load float (float*, float*, i32)*, float (float*, float*, i32)** %24, align 8
  %26 = load float*, float** %8, align 8
  %27 = load float*, float** %8, align 8
  %28 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %29 = call float %25(float* %26, float* %27, i32 %28)
  store float %29, float* %9, align 4
  %30 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %31 = load i32, i32* @LP_FILTER_ORDER, align 4
  %32 = add nsw i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %10, align 8
  %35 = alloca float, i64 %33, align 16
  store i64 %33, i64* %11, align 8
  %36 = load i32, i32* @LP_FILTER_ORDER, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca float, i64 %37, align 16
  store i64 %37, i64* %14, align 8
  %39 = load i32, i32* @LP_FILTER_ORDER, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca float, i64 %40, align 16
  store i64 %40, i64* %15, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MODE_12k2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MODE_10k2, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %3
  %54 = load float*, float** @ff_pow_0_7, align 8
  store float* %54, float** %12, align 8
  %55 = load float*, float** @ff_pow_0_75, align 8
  store float* %55, float** %13, align 8
  br label %59

56:                                               ; preds = %47
  %57 = load float*, float** @ff_pow_0_55, align 8
  store float* %57, float** %12, align 8
  %58 = load float*, float** @ff_pow_0_7, align 8
  store float* %58, float** %13, align 8
  br label %59

59:                                               ; preds = %56, %53
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %93, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @LP_FILTER_ORDER, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %60
  %65 = load float*, float** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = load float*, float** %12, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fmul float %69, %74
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %38, i64 %77
  store float %75, float* %78, align 4
  %79 = load float*, float** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load float, float* %82, align 4
  %84 = load float*, float** %13, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = fmul float %83, %88
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %41, i64 %91
  store float %89, float* %92, align 4
  br label %93

93:                                               ; preds = %64
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %60

96:                                               ; preds = %60
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load float*, float** %98, align 8
  %100 = load i32, i32* @LP_FILTER_ORDER, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 4, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memcpy(float* %35, float* %99, i32 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %107, align 8
  %109 = load i32, i32* @LP_FILTER_ORDER, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %35, i64 %110
  %112 = load float*, float** %8, align 8
  %113 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %114 = load i32, i32* @LP_FILTER_ORDER, align 4
  %115 = call i32 %108(float* %111, float* %41, float* %112, i32 %113, i32 %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load float*, float** %117, align 8
  %119 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %35, i64 %120
  %122 = load i32, i32* @LP_FILTER_ORDER, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 4, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(float* %118, float* %121, i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %129, align 8
  %131 = load float*, float** %6, align 8
  %132 = load i32, i32* @LP_FILTER_ORDER, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %35, i64 %133
  %135 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %136 = load i32, i32* @LP_FILTER_ORDER, align 4
  %137 = call i32 %130(float* %131, float* %38, float* %134, i32 %135, i32 %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = call i32 @tilt_factor(%struct.TYPE_8__* %140, float* %38, float* %41)
  %142 = load float*, float** %6, align 8
  %143 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %144 = call i32 @ff_tilt_compensation(i32* %139, i32 %141, float* %142, i32 %143)
  %145 = load float*, float** %6, align 8
  %146 = load float*, float** %6, align 8
  %147 = load float, float* %9, align 4
  %148 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %149 = load i32, i32* @AMR_AGC_ALPHA, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = call i32 @ff_adaptive_gain_control(float* %145, float* %146, float %147, i32 %148, i32 %149, i32* %151)
  %153 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %153)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(float*, float*, i32) #2

declare dso_local i32 @ff_tilt_compensation(i32*, i32, float*, i32) #2

declare dso_local i32 @tilt_factor(%struct.TYPE_8__*, float*, float*) #2

declare dso_local i32 @ff_adaptive_gain_control(float*, float*, float, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
