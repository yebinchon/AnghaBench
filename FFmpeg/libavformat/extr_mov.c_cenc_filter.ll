; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_cenc_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_cenc_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32**, i64, i64 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"saiz atom found without saio\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"saio atom found without saiz\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Incorrect number of samples in encryption info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_PKT_DATA_ENCRYPTION_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_25__*, %struct.TYPE_21__*, %struct.TYPE_26__*, i32)* @cenc_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cenc_filter(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, %struct.TYPE_21__* %2, %struct.TYPE_26__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_22__* @get_frag_stream_info(%struct.TYPE_18__* %20, i32 %24, i32 %27)
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %12, align 8
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %15, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %13, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %31 = icmp ne %struct.TYPE_22__* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %5
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %40, align 8
  %42 = icmp ne %struct.TYPE_23__* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %15, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %13, align 8
  br label %57

52:                                               ; preds = %38
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %13, align 8
  br label %57

57:                                               ; preds = %52, %43
  br label %58

58:                                               ; preds = %57, %32
  br label %64

59:                                               ; preds = %5
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %13, align 8
  br label %64

64:                                               ; preds = %59, %58
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %66 = icmp ne %struct.TYPE_23__* %65, null
  br i1 %66, label %67, label %173

67:                                               ; preds = %64
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = call i32 @av_log(i32 %80, i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %6, align 4
  br label %174

84:                                               ; preds = %72, %67
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = call i32 @av_log(i32 %97, i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %6, align 4
  br label %174

101:                                              ; preds = %89, %84
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %14, align 8
  br label %136

111:                                              ; preds = %101
  %112 = load i32, i32* %15, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %14, align 8
  br label %135

128:                                              ; preds = %114, %111
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @AV_LOG_ERROR, align 4
  %133 = call i32 @av_log(i32 %131, i32 %132, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %134, i32* %6, align 4
  br label %174

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %135, %106
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @cenc_decrypt(%struct.TYPE_24__* %142, %struct.TYPE_21__* %143, i32* %144, i32 %147, i32 %150)
  store i32 %151, i32* %6, align 4
  br label %174

152:                                              ; preds = %136
  %153 = load i32*, i32** %14, align 8
  %154 = call i32* @av_encryption_info_add_side_data(i32* %153, i64* %17)
  store i32* %154, i32** %18, align 8
  %155 = load i32*, i32** %18, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = call i32 @AVERROR(i32 %158)
  store i32 %159, i32* %6, align 4
  br label %174

160:                                              ; preds = %152
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %162 = load i32, i32* @AV_PKT_DATA_ENCRYPTION_INFO, align 4
  %163 = load i32*, i32** %18, align 8
  %164 = load i64, i64* %17, align 8
  %165 = call i32 @av_packet_add_side_data(%struct.TYPE_26__* %161, i32 %162, i32* %163, i64 %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load i32*, i32** %18, align 8
  %170 = call i32 @av_free(i32* %169)
  br label %171

171:                                              ; preds = %168, %160
  %172 = load i32, i32* %16, align 4
  store i32 %172, i32* %6, align 4
  br label %174

173:                                              ; preds = %64
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %173, %171, %157, %141, %128, %94, %77
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local %struct.TYPE_22__* @get_frag_stream_info(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @cenc_decrypt(%struct.TYPE_24__*, %struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32* @av_encryption_info_add_side_data(i32*, i64*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_add_side_data(%struct.TYPE_26__*, i32, i32*, i64) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
