; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_shorten.c_decode_aiff_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_shorten.c_decode_aiff_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"missing FORM tag\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"missing AIFF tag\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"no COMM chunk found\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"COMM chunk was too short\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"unsupported number of bits per sample: %d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"exp %d is out of range\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"%d header bytes unparsed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @decode_aiff_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_aiff_header(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @bytestream2_init(i32* %12, i32* %18, i32 %19)
  %21 = call i64 @bytestream2_get_le32(i32* %12)
  %22 = call i64 @MKTAG(i8 signext 70, i8 signext 79, float 8.200000e+01, i8 signext 77)
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %25, i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %28, i32* %4, align 4
  br label %159

29:                                               ; preds = %3
  %30 = call i32 @bytestream2_skip(i32* %12, i32 4)
  %31 = call i64 @bytestream2_get_le32(i32* %12)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i64 @MKTAG(i8 signext 65, i8 signext 73, float 7.000000e+01, i8 signext 70)
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i64, i64* %14, align 8
  %37 = call i64 @MKTAG(i8 signext 65, i8 signext 73, float 7.000000e+01, i8 signext 67)
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %40, i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %4, align 4
  br label %159

44:                                               ; preds = %35, %29
  br label %45

45:                                               ; preds = %68, %44
  %46 = call i64 @bytestream2_get_le32(i32* %12)
  %47 = call i64 @MKTAG(i8 signext 67, i8 signext 79, float 7.700000e+01, i8 signext 77)
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = call i32 @bytestream2_get_be32(i32* %12)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = call i64 @bytestream2_get_bytes_left(i32* %12)
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 18, %56
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = icmp slt i64 %54, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %53, %49
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %64, i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %4, align 4
  br label %159

68:                                               ; preds = %53
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 1
  %72 = add nsw i32 %69, %71
  %73 = call i32 @bytestream2_skip(i32* %12, i32 %72)
  br label %45

74:                                               ; preds = %45
  %75 = call i32 @bytestream2_get_be32(i32* %12)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 18
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %79, i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %82, i32* %4, align 4
  br label %159

83:                                               ; preds = %74
  %84 = call i32 @bytestream2_skip(i32* %12, i32 6)
  %85 = call i32 @bytestream2_get_be16(i32* %12)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i64 @MKTAG(i8 signext 65, i8 signext 73, float 7.000000e+01, i8 signext 67)
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 16
  br i1 %96, label %97, label %107

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 8
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %101, i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @ENOSYS, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %4, align 4
  br label %159

107:                                              ; preds = %97, %83
  %108 = call i32 @bytestream2_get_be16(i32* %12)
  %109 = sub nsw i32 %108, 16383
  %110 = sub nsw i32 %109, 63
  store i32 %110, i32* %11, align 4
  %111 = call i32 @bytestream2_get_be64(i32* %12)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %112, -63
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %11, align 4
  %116 = icmp sgt i32 %115, 63
  br i1 %116, label %117, label %123

117:                                              ; preds = %114, %107
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = load i32, i32* @AV_LOG_ERROR, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %118, i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %4, align 4
  br label %159

123:                                              ; preds = %114
  %124 = load i32, i32* %11, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %11, align 4
  %129 = shl i32 %127, %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %148

132:                                              ; preds = %123
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = load i32, i32* %11, align 4
  %136 = sub nsw i32 0, %135
  %137 = sub nsw i32 %136, 1
  %138 = zext i32 %137 to i64
  %139 = shl i64 1, %138
  %140 = add i64 %134, %139
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 0, %141
  %143 = zext i32 %142 to i64
  %144 = lshr i64 %140, %143
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %132, %126
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %149, 18
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = load i32, i32* @AV_LOG_INFO, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %154, i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %153, %148
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %117, %100, %78, %63, %39, %24
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i64 @bytestream2_get_le32(i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, float, i8 signext) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @bytestream2_get_be64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
