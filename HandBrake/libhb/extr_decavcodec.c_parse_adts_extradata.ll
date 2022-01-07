; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_parse_adts_extradata.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_parse_adts_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"aac_adtstoasc\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"decavcodec: bitstream filter alloc failure\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"decavcodec: bitstream filter init failure\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"decavcodec: av_bsf_send_packet failure\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"decavcodec: av_bsf_receive_packet failure %x\00", align 1
@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@HB_CONFIG_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*, i32*)* @parse_adts_extradata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_adts_extradata(%struct.TYPE_21__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %9, align 8
  %14 = call i32* @av_bsf_get_by_name(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @av_bsf_alloc(i32* %15, %struct.TYPE_22__** %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %124

22:                                               ; preds = %3
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @avcodec_parameters_from_context(i32 %36, i32* %37)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %40 = call i32 @av_bsf_init(%struct.TYPE_22__* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %22
  %44 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @av_bsf_free(%struct.TYPE_22__** %9)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %124

47:                                               ; preds = %22
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @av_bsf_send_packet(%struct.TYPE_22__* %48, i32* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @av_bsf_free(%struct.TYPE_22__** %9)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %124

57:                                               ; preds = %47
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @av_bsf_receive_packet(%struct.TYPE_22__* %58, i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = call i32 @av_bsf_free(%struct.TYPE_22__** %9)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = call i32 @AVERROR(i32 %63)
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @AVERROR_EOF, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %57
  store i32 0, i32* %4, align 4
  br label %124

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %124

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %85
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %96 = call i32* @av_packet_get_side_data(i32* %94, i32 %95, i32* %12)
  store i32* %96, i32** %11, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %93
  %100 = load i32, i32* %12, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @HB_CONFIG_MAX_SIZE, align 4
  %105 = call i32 @MIN(i32 %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @memcpy(i32 %111, i32* %112, i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  store i64 %116, i64* %121, align 8
  br label %122

122:                                              ; preds = %102, %99, %93
  br label %123

123:                                              ; preds = %122, %85
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %82, %70, %53, %43, %19
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32* @av_bsf_get_by_name(i8*) #1

declare dso_local i32 @av_bsf_alloc(i32*, %struct.TYPE_22__**) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @avcodec_parameters_from_context(i32, i32*) #1

declare dso_local i32 @av_bsf_init(%struct.TYPE_22__*) #1

declare dso_local i32 @av_bsf_free(%struct.TYPE_22__**) #1

declare dso_local i32 @av_bsf_send_packet(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @av_bsf_receive_packet(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_packet_get_side_data(i32*, i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
