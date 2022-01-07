; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis_parser.c_parse_setup_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbis_parser.c_parse_setup_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Setup header is too short\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Wrong packet type in Setup header\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vorbis\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Invalid packet signature in Setup header\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid Setup header\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"%d modes (either a false positive or a sample from an unknown encoder)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Unsupported mode count: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @parse_setup_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_setup_header(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 7
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %20, i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %23, i32* %4, align 4
  br label %199

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 5
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %30, i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %4, align 4
  br label %199

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i64 @memcmp(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %40, i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %4, align 4
  br label %199

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = call i32* @av_malloc(i32 %45)
  store i32* %46, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %49, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %199

54:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %77, 8
  %79 = call i32 @init_get_bits(i32* %8, i32* %76, i32 %78)
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %88, %75
  %81 = call i32 @get_bits_left(i32* %8)
  %82 = icmp sgt i32 %81, 97
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = call i64 @get_bits1(i32* %8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @get_bits_count(i32* %8)
  store i32 %87, i32* %13, align 4
  br label %89

88:                                               ; preds = %83
  br label %80

89:                                               ; preds = %86, %80
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %93, i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %96, i32* %12, align 4
  br label %195

97:                                               ; preds = %89
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %98

98:                                               ; preds = %126, %97
  %99 = call i32 @get_bits_left(i32* %8)
  %100 = icmp sge i32 %99, 97
  br i1 %100, label %101, label %127

101:                                              ; preds = %98
  %102 = call i32 @get_bits(i32* %8, i32 8)
  %103 = icmp sgt i32 %102, 63
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = call i32 @get_bits(i32* %8, i32 16)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = call i32 @get_bits(i32* %8, i32 16)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107, %104, %101
  br label %127

111:                                              ; preds = %107
  %112 = call i32 @skip_bits(i32* %8, i32 1)
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp sgt i32 %115, 64
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %127

118:                                              ; preds = %111
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %9, align 4
  %120 = call i32 @get_bits(i32* %9, i32 6)
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  store i32 1, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %124, %118
  br label %98

127:                                              ; preds = %117, %110, %98
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = load i32, i32* @AV_LOG_ERROR, align 4
  %133 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %131, i32 %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %134, i32* %12, align 4
  br label %195

135:                                              ; preds = %127
  %136 = load i32, i32* %16, align 4
  %137 = icmp sgt i32 %136, 2
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @avpriv_request_sample(%struct.TYPE_5__* %139, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %138, %135
  %143 = load i32, i32* %16, align 4
  %144 = icmp sgt i32 %143, 63
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %146, i32 %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %150, i32* %12, align 4
  br label %195

151:                                              ; preds = %142
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %14, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sub nsw i32 %155, 1
  %157 = call i32 @av_log2(i32 %156)
  %158 = add nsw i32 %157, 1
  %159 = shl i32 1, %158
  %160 = sub nsw i32 %159, 1
  %161 = shl i32 %160, 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, 1
  %168 = add nsw i32 %167, 1
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %7, align 4
  %173 = mul nsw i32 %172, 8
  %174 = call i32 @init_get_bits(i32* %8, i32* %171, i32 %173)
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @skip_bits_long(i32* %8, i32 %175)
  %177 = load i32, i32* %14, align 4
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %191, %151
  %180 = load i32, i32* %11, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = call i32 @skip_bits_long(i32* %8, i32 40)
  %184 = call i64 @get_bits1(i32* %8)
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64 %184, i64* %190, align 8
  br label %191

191:                                              ; preds = %182
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %11, align 4
  br label %179

194:                                              ; preds = %179
  br label %195

195:                                              ; preds = %194, %145, %130, %92
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @av_free(i32* %196)
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %195, %48, %39, %29, %19
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
