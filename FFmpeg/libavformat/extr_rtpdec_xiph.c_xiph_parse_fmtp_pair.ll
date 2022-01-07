; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_xiph.c_xiph_parse_fmtp_pair.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_xiph.c_xiph_parse_fmtp_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"sampling\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"YCbCr-4:2:0\00", align 1
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"YCbCr-4:4:2\00", align 1
@AV_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"YCbCr-4:4:4\00", align 1
@AV_PIX_FMT_YUV444P = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Unsupported pixel format %s\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"delivery-method\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"configuration-uri\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"configuration\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [49 x i8] c"Out of memory while decoding SDP configuration.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"Packet too large\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*, i8*, i8*)* @xiph_parse_fmtp_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xiph_parse_fmtp_pair(i32* %0, %struct.TYPE_5__* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %5
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %55

31:                                               ; preds = %23
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @AV_PIX_FMT_YUV422P, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %54

39:                                               ; preds = %31
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @AV_PIX_FMT_YUV444P, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %53

47:                                               ; preds = %39
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %48, i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %6, align 4
  br label %141

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54, %27
  br label %139

56:                                               ; preds = %5
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %11, align 8
  %62 = call i8* @atoi(i8* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  store i32 0, i32* %6, align 4
  br label %141

65:                                               ; preds = %56
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %11, align 8
  %71 = call i8* @atoi(i8* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  store i32 0, i32* %6, align 4
  br label %141

74:                                               ; preds = %65
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %79, i32* %6, align 4
  br label %141

80:                                               ; preds = %74
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %85, i32* %6, align 4
  br label %141

86:                                               ; preds = %80
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %134, label %90

90:                                               ; preds = %86
  store i32* null, i32** %14, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = sdiv i32 %92, 4
  %94 = mul nsw i32 %93, 3
  %95 = add nsw i32 %94, 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* @INT_MAX, align 8
  %99 = icmp ule i64 %97, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %90
  %101 = load i64, i64* %16, align 8
  %102 = call i32* @av_malloc(i64 %101)
  store i32* %102, i32** %14, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load i32*, i32** %14, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i64, i64* %16, align 8
  %109 = call i32 @av_base64_decode(i32* %106, i8* %107, i64 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @parse_packed_headers(i32* %110, i32* %111, i32* %115, %struct.TYPE_6__* %116, i32* %117)
  store i32 %118, i32* %13, align 4
  br label %125

119:                                              ; preds = %100
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %120, i32 %121, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = call i32 @AVERROR(i32 %123)
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %119, %105
  br label %131

126:                                              ; preds = %90
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @AV_LOG_ERROR, align 4
  %129 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %127, i32 %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %130 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %126, %125
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @av_free(i32* %132)
  br label %134

134:                                              ; preds = %131, %86
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138, %55
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %139, %84, %78, %69, %60, %47
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @av_base64_decode(i32*, i8*, i64) #1

declare dso_local i32 @parse_packed_headers(i32*, i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
