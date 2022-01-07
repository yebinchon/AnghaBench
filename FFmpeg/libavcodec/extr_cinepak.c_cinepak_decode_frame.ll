; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepak.c_cinepak_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepak.c_cinepak_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__*, i32*, i64, i32* }
%struct.TYPE_16__ = type { i32, i32** }
%struct.TYPE_14__ = type { i32, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cinepak_predecode_check failed\0A\00", align 1
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cinepak_decode failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*)* @cinepak_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cinepak_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %13, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %37, i32* %5, align 4
  br label %150

38:                                               ; preds = %4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = call i32 @AV_RB16(i32* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %54 = call i32* @av_packet_get_side_data(%struct.TYPE_14__* %52, i32 %53, i32* null)
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %150

58:                                               ; preds = %51, %38
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %60 = call i32 @cinepak_predecode_check(%struct.TYPE_13__* %59)
  store i32 %60, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = load i32, i32* @AV_LOG_ERROR, align 4
  %65 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %63, i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %150

67:                                               ; preds = %58
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = call i32 @ff_reget_buffer(%struct.TYPE_15__* %68, %struct.TYPE_16__* %71, i32 0)
  store i32 %72, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %150

76:                                               ; preds = %67
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %76
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %84 = call i32* @av_packet_get_side_data(%struct.TYPE_14__* %82, i32 %83, i32* %15)
  store i32* %84, i32** %16, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @AVPALETTE_SIZE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* @AVPALETTE_SIZE, align 4
  %101 = call i32 @memcpy(i32* %98, i32* %99, i32 %100)
  br label %111

102:                                              ; preds = %87, %81
  %103 = load i32*, i32** %16, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %106, i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %105, %102
  br label %111

111:                                              ; preds = %110, %91
  br label %112

112:                                              ; preds = %111, %76
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %114 = call i32 @cinepak_decode(%struct.TYPE_13__* %113)
  store i32 %114, i32* %11, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %117, i32 %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @AVPALETTE_SIZE, align 4
  %137 = call i32 @memcpy(i32* %132, i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %125, %120
  %139 = load i8*, i8** %7, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = call i32 @av_frame_ref(i8* %139, %struct.TYPE_16__* %142)
  store i32 %143, i32* %11, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %5, align 4
  br label %150

147:                                              ; preds = %138
  %148 = load i32*, i32** %8, align 8
  store i32 1, i32* %148, align 4
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %147, %145, %74, %62, %56, %36
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @cinepak_predecode_check(%struct.TYPE_13__*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cinepak_decode(%struct.TYPE_13__*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
