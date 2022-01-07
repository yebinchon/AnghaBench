; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_adtsenc.c_adts_decode_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_adtsenc.c_adts_decode_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"MPEG-4 AOT %d is not allowed in ADTS\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Escape sample rate index illegal in ADTS\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"960/120 MDCT window is not allowed in ADTS\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Scalable configurations are not allowed in ADTS\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Extension flag is not allowed in ADTS\0A\00", align 1
@MAX_PCE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32*, i32)* @adts_decode_extradata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adts_decode_extradata(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %15, 8
  %17 = call i32 @init_get_bits(i32* %10, i32* %14, i32 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @avpriv_mpeg4audio_get_config2(%struct.TYPE_5__* %12, i32* %18, i32 %19, i32 1, i32* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %5, align 4
  br label %110

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @skip_bits_long(i32* %10, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %30, 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ugt i32 %44, 3
  br i1 %45, label %46, label %55

46:                                               ; preds = %26
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, 1
  %53 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %47, i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %5, align 4
  br label %110

55:                                               ; preds = %26
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 15
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %61, i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %5, align 4
  br label %110

65:                                               ; preds = %55
  %66 = call i64 @get_bits(i32* %10, i32 1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %69, i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %5, align 4
  br label %110

73:                                               ; preds = %65
  %74 = call i64 @get_bits(i32* %10, i32 1)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @AV_LOG_ERROR, align 4
  %79 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %77, i32 %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %5, align 4
  br label %110

81:                                               ; preds = %73
  %82 = call i64 @get_bits(i32* %10, i32 1)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %85, i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %88, i32* %5, align 4
  br label %110

89:                                               ; preds = %81
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MAX_PCE_SIZE, align 4
  %99 = call i32 @init_put_bits(i32* %11, i32 %97, i32 %98)
  %100 = call i32 @put_bits(i32* %11, i32 3, i32 5)
  %101 = call i32 @ff_copy_pce_data(i32* %11, i32* %10)
  %102 = add nsw i32 %101, 3
  %103 = sdiv i32 %102, 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = call i32 @flush_put_bits(i32* %11)
  br label %107

107:                                              ; preds = %94, %89
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 1, i32* %109, align 4
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %107, %84, %76, %68, %60, %46, %24
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @avpriv_mpeg4audio_get_config2(%struct.TYPE_5__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @init_put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @ff_copy_pce_data(i32*, i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
