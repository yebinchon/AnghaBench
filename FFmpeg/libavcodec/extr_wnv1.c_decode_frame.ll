; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wnv1.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wnv1.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64*, i32 }
%struct.TYPE_14__ = type { i32, i8**, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Packet size %d is too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot allocate temporary buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ff_reverse = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Unknown WNV1 frame header value %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_13__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %10, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %11, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %13, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 2
  %43 = mul nsw i32 %38, %42
  %44 = sdiv i32 %43, 8
  %45 = add nsw i32 8, %44
  %46 = icmp slt i32 %35, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %48, i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %5, align 4
  br label %269

53:                                               ; preds = %4
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i64* @av_malloc(i64 %57)
  store i64* %58, i64** %23, align 8
  %59 = load i64*, i64** %23, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %62, i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %5, align 4
  br label %269

67:                                               ; preds = %53
  %68 = load i64*, i64** %23, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %73 = call i32 @memset(i64* %71, i32 0, i64 %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %76 = call i32 @ff_get_buffer(%struct.TYPE_15__* %74, %struct.TYPE_14__* %75, i32 0)
  store i32 %76, i32* %19, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load i64*, i64** %23, align 8
  %80 = call i32 @av_free(i64* %79)
  %81 = load i32, i32* %19, align 4
  store i32 %81, i32* %5, align 4
  br label %269

82:                                               ; preds = %67
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  store i32 8, i32* %17, align 4
  br label %85

85:                                               ; preds = %102, %82
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i64*, i64** @ff_reverse, align 8
  %91 = load i64*, i64** %11, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %90, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %23, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %97, i64* %101, align 8
  br label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %17, align 4
  br label %85

105:                                              ; preds = %85
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i64*, i64** %23, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 8
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %110, 8
  %112 = call i32 @init_get_bits8(i32* %107, i64* %109, i32 %111)
  store i32 %112, i32* %19, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* %19, align 4
  store i32 %115, i32* %5, align 4
  br label %269

116:                                              ; preds = %105
  %117 = load i64*, i64** %11, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  %120 = lshr i64 %119, 4
  %121 = icmp eq i64 %120, 6
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i32 2, i32* %124, align 4
  br label %162

125:                                              ; preds = %116
  %126 = load i64*, i64** %11, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 2
  %128 = load i64, i64* %127, align 8
  %129 = lshr i64 %128, 4
  %130 = sub i64 8, %129
  %131 = trunc i64 %130 to i32
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 4
  br i1 %137, label %138, label %147

138:                                              ; preds = %125
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = load i64*, i64** %11, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 2
  %142 = load i64, i64* %141, align 8
  %143 = lshr i64 %142, 4
  %144 = call i32 @avpriv_request_sample(%struct.TYPE_15__* %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  store i32 4, i32* %146, align 4
  br label %147

147:                                              ; preds = %138, %125
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = load i64*, i64** %11, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 2
  %156 = load i64, i64* %155, align 8
  %157 = lshr i64 %156, 4
  %158 = call i32 @avpriv_request_sample(%struct.TYPE_15__* %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %152, %147
  br label %162

162:                                              ; preds = %161, %122
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = load i8**, i8*** %164, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %14, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load i8**, i8*** %169, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 1
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %15, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 2
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %16, align 8
  store i32 0, i32* %18, align 4
  br label %178

178:                                              ; preds = %261, %162
  %179 = load i32, i32* %18, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %264

184:                                              ; preds = %178
  store i32 0, i32* %17, align 4
  br label %185

185:                                              ; preds = %233, %184
  %186 = load i32, i32* %17, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sdiv i32 %189, 2
  %191 = icmp slt i32 %186, %190
  br i1 %191, label %192, label %236

192:                                              ; preds = %185
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %194 = load i32, i32* %20, align 4
  %195 = call zeroext i8 @wnv1_get_code(%struct.TYPE_12__* %193, i32 %194)
  %196 = load i8*, i8** %14, align 8
  %197 = load i32, i32* %17, align 4
  %198 = mul nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  store i8 %195, i8* %200, align 1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %202 = load i32, i32* %21, align 4
  %203 = call zeroext i8 @wnv1_get_code(%struct.TYPE_12__* %201, i32 %202)
  %204 = load i8*, i8** %15, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 %203, i8* %207, align 1
  %208 = zext i8 %203 to i32
  store i32 %208, i32* %21, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %210 = load i8*, i8** %14, align 8
  %211 = load i32, i32* %17, align 4
  %212 = mul nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = call zeroext i8 @wnv1_get_code(%struct.TYPE_12__* %209, i32 %216)
  %218 = load i8*, i8** %14, align 8
  %219 = load i32, i32* %17, align 4
  %220 = mul nsw i32 %219, 2
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %218, i64 %222
  store i8 %217, i8* %223, align 1
  %224 = zext i8 %217 to i32
  store i32 %224, i32* %20, align 4
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %226 = load i32, i32* %22, align 4
  %227 = call zeroext i8 @wnv1_get_code(%struct.TYPE_12__* %225, i32 %226)
  %228 = load i8*, i8** %16, align 8
  %229 = load i32, i32* %17, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  store i8 %227, i8* %231, align 1
  %232 = zext i8 %227 to i32
  store i32 %232, i32* %22, align 4
  br label %233

233:                                              ; preds = %192
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %17, align 4
  br label %185

236:                                              ; preds = %185
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load i8*, i8** %14, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %14, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = load i8*, i8** %15, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i8, i8* %250, i64 %251
  store i8* %252, i8** %15, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  %257 = load i32, i32* %256, align 4
  %258 = load i8*, i8** %16, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8* %260, i8** %16, align 8
  br label %261

261:                                              ; preds = %236
  %262 = load i32, i32* %18, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %18, align 4
  br label %178

264:                                              ; preds = %178
  %265 = load i32*, i32** %8, align 8
  store i32 1, i32* %265, align 4
  %266 = load i64*, i64** %23, align 8
  %267 = call i32 @av_free(i64* %266)
  %268 = load i32, i32* %12, align 4
  store i32 %268, i32* %5, align 4
  br label %269

269:                                              ; preds = %264, %114, %78, %61, %47
  %270 = load i32, i32* %5, align 4
  ret i32 %270
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i64* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_free(i64*) #1

declare dso_local i32 @init_get_bits8(i32*, i64*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_15__*, i8*, i64) #1

declare dso_local zeroext i8 @wnv1_get_code(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
