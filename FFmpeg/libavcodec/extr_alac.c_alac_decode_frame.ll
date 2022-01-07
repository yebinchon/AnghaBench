; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alac.c_alac_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alac.c_alac_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@TYPE_END = common dso_local global i32 0, align 4
@TYPE_CPE = common dso_local global i32 0, align 4
@TYPE_LFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Syntax element %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@ff_alac_channel_layout_offsets = common dso_local global i32** null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid element channel count\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"no end tag found. incomplete packet.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Error : %d bits left\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to decode all channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*, %struct.TYPE_9__*)* @alac_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alac_decode_frame(%struct.TYPE_10__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @init_get_bits8(i32* %23, i32 %26, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %5, align 4
  br label %181

34:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %126, %34
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = call i32 @get_bits_left(i32* %39)
  %41 = icmp sge i32 %40, 3
  br i1 %41, label %42, label %130

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = call i32 @get_bits(i32* %44, i32 3)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @TYPE_END, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %16, align 4
  br label %130

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @TYPE_CPE, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @TYPE_LFE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @avpriv_report_missing_feature(%struct.TYPE_10__* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %62, i32* %5, align 4
  br label %181

63:                                               ; preds = %54, %50
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @TYPE_CPE, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 2, i32 1
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %95, label %76

76:                                               ; preds = %63
  %77 = load i32**, i32*** @ff_alac_channel_layout_offsets, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %77, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %88, %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %76, %63
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %96, i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %99, i32* %5, align 4
  br label %181

100:                                              ; preds = %76
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32**, i32*** @ff_alac_channel_layout_offsets, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %103, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @decode_element(%struct.TYPE_10__* %101, i32* %102, i32 %114, i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %100
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = call i32 @get_bits_left(i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %5, align 4
  br label %181

126:                                              ; preds = %119, %100
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %14, align 4
  br label %37

130:                                              ; preds = %49, %37
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %134, i32 %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %137, i32* %5, align 4
  br label %181

138:                                              ; preds = %130
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %141, 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = call i32 @get_bits_count(i32* %144)
  %146 = sub nsw i32 %142, %145
  %147 = icmp sgt i32 %146, 8
  br i1 %147, label %148, label %160

148:                                              ; preds = %138
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %150 = load i32, i32* @AV_LOG_ERROR, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %153, 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = call i32 @get_bits_count(i32* %156)
  %158 = sub nsw i32 %154, %157
  %159 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %149, i32 %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %148, %138
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32*, i32** %8, align 8
  store i32 1, i32* %172, align 4
  br label %177

173:                                              ; preds = %166, %160
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %175 = load i32, i32* @AV_LOG_WARNING, align 4
  %176 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %174, i32 %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %177

177:                                              ; preds = %173, %171
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %177, %133, %124, %95, %58, %32
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @decode_element(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
