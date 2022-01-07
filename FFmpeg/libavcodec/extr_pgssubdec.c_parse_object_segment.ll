; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pgssubdec.c_parse_object_segment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pgssubdec.c_parse_object_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MAX_EPOCH_OBJECTS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Too many objects in epoch\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Buffer dimension %d larger than the expected RLE data %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Bitmap dimensions (%dx%d) invalid.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @parse_object_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_object_segment(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %21, i32* %4, align 4
  br label %184

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 4
  store i32 %24, i32* %7, align 4
  %25 = call i8* @bytestream_get_be16(i32** %6)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = call %struct.TYPE_8__* @find_object(i32 %27, %struct.TYPE_11__* %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %9, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %22
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MAX_EPOCH_OBJECTS, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %41, i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %4, align 4
  br label %184

45:                                               ; preds = %33
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %53
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %9, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %45, %22
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32* %61, i32** %6, align 8
  %62 = call i32 @bytestream_get_byte(i32** %6)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %4, align 4
  br label %184

74:                                               ; preds = %66
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @memcpy(i64 %82, i32* %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  store i32 0, i32* %4, align 4
  br label %184

96:                                               ; preds = %59
  %97 = load i32, i32* %7, align 4
  %98 = icmp sle i32 %97, 7
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %4, align 4
  br label %184

101:                                              ; preds = %96
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, 7
  store i32 %103, i32* %7, align 4
  %104 = call i32 @bytestream_get_be24(i32** %6)
  %105 = sub nsw i32 %104, 4
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = load i32, i32* @AV_LOG_ERROR, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %110, i32 %111, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %115, i32* %4, align 4
  br label %184

116:                                              ; preds = %101
  %117 = call i8* @bytestream_get_be16(i32** %6)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %12, align 4
  %119 = call i8* @bytestream_get_be16(i32** %6)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %13, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %138, label %126

126:                                              ; preds = %116
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %135, %132, %126, %116
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = load i32, i32* @AV_LOG_ERROR, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %139, i32 %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %144, i32* %4, align 4
  br label %184

145:                                              ; preds = %135
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 6
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @av_fast_padded_malloc(i64* %153, i32* %155, i32 %156)
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %145
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  store i32 0, i32* %164, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = call i32 @AVERROR(i32 %167)
  store i32 %168, i32* %4, align 4
  br label %184

169:                                              ; preds = %145
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @memcpy(i64 %172, i32* %173, i32 %174)
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sub i32 %179, %180
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %169, %162, %138, %109, %99, %74, %72, %40, %20
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i8* @bytestream_get_be16(i32**) #1

declare dso_local %struct.TYPE_8__* @find_object(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream_get_byte(i32**) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @bytestream_get_be24(i32**) #1

declare dso_local i32 @av_fast_padded_malloc(i64*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
