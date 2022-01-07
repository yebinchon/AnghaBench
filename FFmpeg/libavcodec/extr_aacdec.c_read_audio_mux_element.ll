; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_read_audio_mux_element.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_read_audio_mux_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LATMContext = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no decoder config found\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"incomplete frame\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"frame length mismatch %d << %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.LATMContext*, i32*)* @read_audio_mux_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_audio_mux_element(%struct.LATMContext* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LATMContext*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.LATMContext* %0, %struct.LATMContext** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @get_bits(i32* %9, i32 1)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @read_stream_mux_config(%struct.LATMContext* %14, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %86

20:                                               ; preds = %13
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %23 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %31 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* @AV_LOG_DEBUG, align 4
  %35 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %33, i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %86

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %39 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @read_payload_length_info(%struct.LATMContext* %43, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @get_bits_left(i32* %52)
  %54 = sext i32 %53 to i64
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48, %42
  %57 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %58 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %60, i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %3, align 4
  br label %86

64:                                               ; preds = %48
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %65, 8
  %67 = add nsw i32 %66, 256
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @get_bits_left(i32* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %73 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %77, 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @get_bits_left(i32* %79)
  %81 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %75, i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %80)
  %82 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %82, i32* %3, align 4
  br label %86

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %37
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %71, %56, %29, %18
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @read_stream_mux_config(%struct.LATMContext*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local i32 @read_payload_length_info(%struct.LATMContext*, i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
