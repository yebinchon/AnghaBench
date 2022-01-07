; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_postfilter_5k0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_postfilter_5k0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float*, i32 }

@SUBFR_SIZE = common dso_local global i32 0, align 4
@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@ff_pow_0_75 = common dso_local global float* null, align 8
@ff_pow_0_5 = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, float*)* @postfilter_5k0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postfilter_5k0(%struct.TYPE_3__* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %13 = load i32, i32* @SUBFR_SIZE, align 4
  %14 = load i32, i32* @LP_FILTER_ORDER, align 4
  %15 = add nsw i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca float, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @LP_FILTER_ORDER, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  store float* %21, float** %9, align 8
  %22 = load i32, i32* @LP_FILTER_ORDER, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca float, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i32, i32* @LP_FILTER_ORDER, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca float, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %61, %3
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @LP_FILTER_ORDER, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load float*, float** %5, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = load float*, float** @ff_pow_0_75, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fmul float %37, %42
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %27, i64 %45
  store float %43, float* %46, align 4
  %47 = load float*, float** %5, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float*, float** @ff_pow_0_5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fmul float %51, %56
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %24, i64 %59
  store float %57, float* %60, align 4
  br label %61

61:                                               ; preds = %32
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %28

64:                                               ; preds = %28
  %65 = load float*, float** %9, align 8
  %66 = load i32, i32* @LP_FILTER_ORDER, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds float, float* %65, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load float*, float** %71, align 8
  %73 = load i32, i32* @LP_FILTER_ORDER, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(float* %69, float* %72, i32 %76)
  %78 = load float*, float** %9, align 8
  %79 = load float*, float** %6, align 8
  %80 = load i32, i32* @SUBFR_SIZE, align 4
  %81 = load i32, i32* @LP_FILTER_ORDER, align 4
  %82 = call i32 @ff_celp_lp_synthesis_filterf(float* %78, float* %27, float* %79, i32 %80, i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load float*, float** %84, align 8
  %86 = load float*, float** %9, align 8
  %87 = load i32, i32* @SUBFR_SIZE, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load i32, i32* @LP_FILTER_ORDER, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 0, %91
  %93 = getelementptr inbounds float, float* %89, i64 %92
  %94 = load i32, i32* @LP_FILTER_ORDER, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memcpy(float* %85, float* %93, i32 %97)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load float*, float** %9, align 8
  %102 = load i32, i32* @SUBFR_SIZE, align 4
  %103 = call i32 @ff_tilt_compensation(i32* %100, double 4.000000e-01, float* %101, i32 %102)
  %104 = load float*, float** %9, align 8
  %105 = load i32, i32* @LP_FILTER_ORDER, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr inbounds float, float* %104, i64 %107
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load float*, float** %110, align 8
  %112 = load i32, i32* @LP_FILTER_ORDER, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memcpy(float* %108, float* %111, i32 %115)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load float*, float** %118, align 8
  %120 = load float*, float** %9, align 8
  %121 = load i32, i32* @SUBFR_SIZE, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  %124 = load i32, i32* @LP_FILTER_ORDER, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 0, %125
  %127 = getelementptr inbounds float, float* %123, i64 %126
  %128 = load i32, i32* @LP_FILTER_ORDER, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memcpy(float* %119, float* %127, i32 %131)
  %133 = load float*, float** %6, align 8
  %134 = load float*, float** %9, align 8
  %135 = load i32, i32* @SUBFR_SIZE, align 4
  %136 = load i32, i32* @LP_FILTER_ORDER, align 4
  %137 = call i32 @ff_celp_lp_zero_synthesis_filterf(float* %133, float* %24, float* %134, i32 %135, i32 %136)
  %138 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %138)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(float*, float*, i32) #2

declare dso_local i32 @ff_celp_lp_synthesis_filterf(float*, float*, float*, i32, i32) #2

declare dso_local i32 @ff_tilt_compensation(i32*, double, float*, i32) #2

declare dso_local i32 @ff_celp_lp_zero_synthesis_filterf(float*, float*, float*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
