; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_b44_uncompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_b44_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32* }

@EXR_HALF = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Not enough data for B44A block: %d\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Not enough data for B44 block: %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Not enough data for uncompress channel: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32, i32, %struct.TYPE_8__*)* @b44_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_uncompress(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [16 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %12, align 8
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %26, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 4
  store i32 %32, i32* %14, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = srem i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %38, %5
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 4
  store i32 %45, i32* %15, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %51, %41
  store i32 0, i32* %21, align 4
  br label %55

55:                                               ; preds = %288, %54
  %56 = load i32, i32* %21, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %291

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @EXR_HALF, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %216

72:                                               ; preds = %61
  store i32 0, i32* %22, align 4
  br label %73

73:                                               ; preds = %210, %72
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %213

77:                                               ; preds = %73
  store i32 0, i32* %23, align 4
  br label %78

78:                                               ; preds = %206, %77
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %209

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @av_log(%struct.TYPE_9__* %86, i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %90, i32* %6, align 4
  br label %292

91:                                               ; preds = %82
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %93, %94
  %96 = add nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 252
  br i1 %100, label %101, label %109

101:                                              ; preds = %91
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %104 = call i32 @unpack_3(i32* %102, i32* %103)
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  store i32* %106, i32** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %107, 3
  store i32 %108, i32* %13, align 4
  br label %126

109:                                              ; preds = %91
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 14
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = load i32, i32* @AV_LOG_ERROR, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @av_log(%struct.TYPE_9__* %113, i32 %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %117, i32* %6, align 4
  br label %292

118:                                              ; preds = %109
  %119 = load i32*, i32** %12, align 8
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %121 = call i32 @unpack_14(i32* %119, i32* %120)
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 14
  store i32* %123, i32** %12, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sub nsw i32 %124, 14
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %118, %101
  %127 = load i32, i32* %23, align 4
  %128 = mul nsw i32 %127, 4
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %22, align 4
  %130 = mul nsw i32 %129, 4
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %17, align 4
  store i32 %131, i32* %24, align 4
  br label %132

132:                                              ; preds = %202, %126
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @FFMIN(i32 %135, i32 %138)
  %140 = icmp slt i32 %133, %139
  br i1 %140, label %141, label %205

141:                                              ; preds = %132
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %25, align 4
  br label %143

143:                                              ; preds = %198, %141
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @FFMIN(i32 %146, i32 %149)
  %151 = icmp slt i32 %144, %150
  br i1 %151, label %152, label %201

152:                                              ; preds = %143
  %153 = load i32, i32* %26, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %153, %156
  %158 = load i32, i32* %24, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %158, %161
  %163 = add nsw i32 %157, %162
  %164 = load i32, i32* %25, align 4
  %165 = mul nsw i32 2, %164
  %166 = add nsw i32 %163, %165
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %17, align 4
  %169 = sub nsw i32 %167, %168
  %170 = mul nsw i32 %169, 4
  %171 = load i32, i32* %25, align 4
  %172 = load i32, i32* %16, align 4
  %173 = sub nsw i32 %171, %172
  %174 = add nsw i32 %170, %173
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 255
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %190, i32* %197, align 4
  br label %198

198:                                              ; preds = %152
  %199 = load i32, i32* %25, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %25, align 4
  br label %143

201:                                              ; preds = %143
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %24, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %24, align 4
  br label %132

205:                                              ; preds = %132
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %23, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %23, align 4
  br label %78

209:                                              ; preds = %78
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %22, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %22, align 4
  br label %73

213:                                              ; preds = %73
  %214 = load i32, i32* %26, align 4
  %215 = add nsw i32 %214, 2
  store i32 %215, i32* %26, align 4
  br label %287

216:                                              ; preds = %61
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = mul nsw i32 %220, %223
  %225 = mul nsw i32 %224, 4
  %226 = icmp slt i32 %217, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %216
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %229 = load i32, i32* @AV_LOG_ERROR, align 4
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @av_log(%struct.TYPE_9__* %228, i32 %229, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %232, i32* %6, align 4
  br label %292

233:                                              ; preds = %216
  store i32 0, i32* %24, align 4
  br label %234

234:                                              ; preds = %271, %233
  %235 = load i32, i32* %24, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %274

240:                                              ; preds = %234
  %241 = load i32, i32* %26, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = mul nsw i32 %241, %244
  %246 = load i32, i32* %24, align 4
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = mul nsw i32 %246, %249
  %251 = add nsw i32 %245, %250
  store i32 %251, i32* %18, align 4
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32*, i32** %12, align 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = mul nsw i32 %261, 4
  %263 = call i32 @memcpy(i32* %257, i32* %258, i32 %262)
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = mul nsw i32 %266, 4
  %268 = load i32*, i32** %12, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %12, align 8
  br label %271

271:                                              ; preds = %240
  %272 = load i32, i32* %24, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %24, align 4
  br label %234

274:                                              ; preds = %234
  %275 = load i32, i32* %26, align 4
  %276 = add nsw i32 %275, 4
  store i32 %276, i32* %26, align 4
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = mul nsw i32 %279, %282
  %284 = mul nsw i32 %283, 4
  %285 = load i32, i32* %13, align 4
  %286 = sub nsw i32 %285, %284
  store i32 %286, i32* %13, align 4
  br label %287

287:                                              ; preds = %274, %213
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %21, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %21, align 4
  br label %55

291:                                              ; preds = %55
  store i32 0, i32* %6, align 4
  br label %292

292:                                              ; preds = %291, %227, %112, %85
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i32 @unpack_3(i32*, i32*) #1

declare dso_local i32 @unpack_14(i32*, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
