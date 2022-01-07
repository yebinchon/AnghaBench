; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_parse_postfilter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_parse_postfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float*, i32 }

@ff_celt_model_tapset = common dso_local global i32 0, align 4
@CELT_POSTFILTER_MINPERIOD = common dso_local global i32 0, align 4
@ff_celt_postfilter_taps = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @parse_postfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_postfilter(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load float*, float** %18, align 8
  %20 = call i32 @memset(float* %19, i32 0, i32 8)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load float*, float** %25, align 8
  %27 = call i32 @memset(float* %26, i32 0, i32 8)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %135

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 16
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %135

39:                                               ; preds = %32
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ff_opus_rc_dec_log(i32* %40, i32 1)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %132

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @ff_opus_rc_dec_uint(i32* %45, i32 6)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 16, %47
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 4, %50
  %52 = call i32 @ff_opus_rc_get_raw(i32* %49, i32 %51)
  %53 = add nsw i32 %48, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @ff_opus_rc_get_raw(i32* %55, i32 3)
  %57 = add nsw i32 %56, 1
  %58 = sitofp i32 %57 to float
  %59 = fmul float 9.375000e-02, %58
  store float %59, float* %9, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @opus_rc_tell(i32* %60)
  %62 = add nsw i32 %61, 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp sle i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %44
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @ff_celt_model_tapset, align 4
  %70 = call i32 @ff_opus_rc_dec_cdf(i32* %68, i32 %69)
  br label %72

71:                                               ; preds = %44
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 0, %71 ]
  store i32 %73, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %128, %72
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %131

77:                                               ; preds = %74
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %13, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @CELT_POSTFILTER_MINPERIOD, align 4
  %86 = call i32 @FFMAX(i32 %84, i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load float, float* %9, align 4
  %90 = load float**, float*** @ff_celt_postfilter_taps, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float*, float** %90, i64 %92
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 0
  %96 = load float, float* %95, align 4
  %97 = fmul float %89, %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load float*, float** %99, align 8
  %101 = getelementptr inbounds float, float* %100, i64 0
  store float %97, float* %101, align 4
  %102 = load float, float* %9, align 4
  %103 = load float**, float*** @ff_celt_postfilter_taps, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float*, float** %103, i64 %105
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds float, float* %107, i64 1
  %109 = load float, float* %108, align 4
  %110 = fmul float %102, %109
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load float*, float** %112, align 8
  %114 = getelementptr inbounds float, float* %113, i64 1
  store float %110, float* %114, align 4
  %115 = load float, float* %9, align 4
  %116 = load float**, float*** @ff_celt_postfilter_taps, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float*, float** %116, i64 %118
  %120 = load float*, float** %119, align 8
  %121 = getelementptr inbounds float, float* %120, i64 2
  %122 = load float, float* %121, align 4
  %123 = fmul float %115, %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load float*, float** %125, align 8
  %127 = getelementptr inbounds float, float* %126, i64 2
  store float %123, float* %127, align 4
  br label %128

128:                                              ; preds = %77
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %74

131:                                              ; preds = %74
  br label %132

132:                                              ; preds = %131, %39
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @opus_rc_tell(i32* %133)
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %32, %3
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @ff_opus_rc_dec_log(i32*, i32) #1

declare dso_local i32 @ff_opus_rc_dec_uint(i32*, i32) #1

declare dso_local i32 @ff_opus_rc_get_raw(i32*, i32) #1

declare dso_local i32 @opus_rc_tell(i32*) #1

declare dso_local i32 @ff_opus_rc_dec_cdf(i32*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
