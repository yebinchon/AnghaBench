; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_celt_enc_quant_pfilter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_celt_enc_quant_pfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, i32, i32, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { float*, i32 }

@ff_celt_model_tapset = common dso_local global i32 0, align 4
@CELT_POSTFILTER_MINPERIOD = common dso_local global i32 0, align 4
@ff_celt_postfilter_taps = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @celt_enc_quant_pfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_enc_quant_pfilter(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load float, float* %13, align 8
  store float %14, float* %5, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ff_opus_rc_enc_log(i32* %24, i32 %27, i32 1)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %144

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @FFMIN(i32 %35, i32 6)
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ff_opus_rc_enc_uint(i32* %37, i32 %38, i32 6)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 16, %42
  %44 = sub nsw i32 %41, %43
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 4, %46
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @av_clip(i32 %45, i32 0, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 4, %53
  %55 = call i32 @ff_opus_rc_put_raw(i32* %51, i32 %52, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 16, %57
  %59 = add nsw i32 %56, %58
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load float, float* %5, align 4
  %62 = fdiv float %61, 9.375000e-02
  %63 = fptosi float %62 to i32
  %64 = sub nsw i32 %63, 1
  %65 = call i32 @FFMIN(i32 %64, i32 7)
  store i32 %65, i32* %6, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ff_opus_rc_put_raw(i32* %66, i32 %67, i32 3)
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  %71 = sitofp i32 %70 to float
  %72 = fmul float 9.375000e-02, %71
  store float %72, float* %5, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call i64 @opus_rc_tell(i32* %73)
  %75 = add nsw i64 %74, 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %34
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @ff_celt_model_tapset, align 4
  %84 = call i32 @ff_opus_rc_enc_cdf(i32* %81, i32 %82, i32 %83)
  br label %86

85:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %85, %80
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %141, %86
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %144

90:                                               ; preds = %87
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  store %struct.TYPE_5__* %96, %struct.TYPE_5__** %11, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @CELT_POSTFILTER_MINPERIOD, align 4
  %99 = call i32 @FFMAX(i32 %97, i32 %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load float, float* %5, align 4
  %103 = load float**, float*** @ff_celt_postfilter_taps, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float*, float** %103, i64 %105
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds float, float* %107, i64 0
  %109 = load float, float* %108, align 4
  %110 = fmul float %102, %109
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load float*, float** %112, align 8
  %114 = getelementptr inbounds float, float* %113, i64 0
  store float %110, float* %114, align 4
  %115 = load float, float* %5, align 4
  %116 = load float**, float*** @ff_celt_postfilter_taps, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float*, float** %116, i64 %118
  %120 = load float*, float** %119, align 8
  %121 = getelementptr inbounds float, float* %120, i64 1
  %122 = load float, float* %121, align 4
  %123 = fmul float %115, %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load float*, float** %125, align 8
  %127 = getelementptr inbounds float, float* %126, i64 1
  store float %123, float* %127, align 4
  %128 = load float, float* %5, align 4
  %129 = load float**, float*** @ff_celt_postfilter_taps, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float*, float** %129, i64 %131
  %133 = load float*, float** %132, align 8
  %134 = getelementptr inbounds float, float* %133, i64 2
  %135 = load float, float* %134, align 4
  %136 = fmul float %128, %135
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load float*, float** %138, align 8
  %140 = getelementptr inbounds float, float* %139, i64 2
  store float %136, float* %140, align 4
  br label %141

141:                                              ; preds = %90
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %87

144:                                              ; preds = %33, %87
  ret void
}

declare dso_local i32 @ff_opus_rc_enc_log(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_opus_rc_enc_uint(i32*, i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @ff_opus_rc_put_raw(i32*, i32, i32) #1

declare dso_local i64 @opus_rc_tell(i32*) #1

declare dso_local i32 @ff_opus_rc_enc_cdf(i32*, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
