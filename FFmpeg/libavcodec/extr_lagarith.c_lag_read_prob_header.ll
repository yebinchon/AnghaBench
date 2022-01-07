; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lagarith.c_lag_read_prob_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lagarith.c_lag_read_prob_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid probability encountered.\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Integer overflow encountered in cumulative probability calculation.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid probability run encountered.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"All probabilities are 0!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Scaled probabilities invalid\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Scaled probabilities are larger than target!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @lag_read_prob_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lag_read_prob_header(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 4
  %19 = load i64, i64* @UINT_MAX, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 257
  store i32 %20, i32* %24, align 4
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %121, %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 257
  br i1 %27, label %28, label %124

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i64 @lag_decode_prob(i32* %29, i32* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = call i32 @av_log(i32 %41, i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %311

44:                                               ; preds = %28
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %46, %54
  %56 = load i64, i64* @UINT_MAX, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %44
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = call i32 @av_log(i32 %61, i32 %62, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %311

64:                                               ; preds = %44
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %117, label %82

82:                                               ; preds = %64
  %83 = load i32*, i32** %5, align 8
  %84 = call i64 @lag_decode_prob(i32* %83, i32* %9)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = call i32 @av_log(i32 %89, i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %311

92:                                               ; preds = %82
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 256, %94
  %96 = icmp ugt i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 256, %98
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %97, %92
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %113, %100
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %101

116:                                              ; preds = %101
  br label %120

117:                                              ; preds = %64
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %117, %116
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %25

124:                                              ; preds = %25
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = call i32 @av_log(i32 %130, i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %311

133:                                              ; preds = %124
  %134 = load i32, i32* %13, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @show_bits_long(i32* %137, i32 32)
  %139 = and i32 %138, 16777215
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %142, i32* %3, align 4
  br label %311

143:                                              ; preds = %136, %133
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @av_log2(i32 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = sub i32 %147, 1
  %149 = and i32 %146, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %283

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  %153 = call i64 @softfloat_reciprocal(i32 %152)
  store i64 %153, i64* %14, align 8
  store i32 1, i32* %6, align 4
  br label %154

154:                                              ; preds = %184, %151
  %155 = load i32, i32* %6, align 4
  %156 = icmp sle i32 %155, 128
  br i1 %156, label %157, label %187

157:                                              ; preds = %154
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %14, align 8
  %167 = call i8* @softfloat_mul(i64 %165, i64 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %12, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %157
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %154

187:                                              ; preds = %154
  %188 = load i32, i32* %12, align 4
  %189 = icmp ule i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @AV_LOG_ERROR, align 4
  %195 = call i32 @av_log(i32 %193, i32 %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %196 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %196, i32* %3, align 4
  br label %311

197:                                              ; preds = %187
  br label %198

198:                                              ; preds = %228, %197
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %199, 257
  br i1 %200, label %201, label %231

201:                                              ; preds = %198
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = zext i32 %208 to i64
  %210 = load i64, i64* %14, align 8
  %211 = call i8* @softfloat_mul(i64 %209, i64 %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %212, i32* %218, align 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %12, align 4
  %227 = add i32 %226, %225
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %201
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %198

231:                                              ; preds = %198
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp uge i32 %234, 32
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %237, i32* %3, align 4
  br label %311

238:                                              ; preds = %231
  %239 = load i32, i32* %8, align 4
  %240 = shl i32 1, %239
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* %10, align 4
  %243 = icmp ugt i32 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @AV_LOG_ERROR, align 4
  %249 = call i32 @av_log(i32 %247, i32 %248, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %311

250:                                              ; preds = %238
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %12, align 4
  %253 = sub i32 %251, %252
  store i32 %253, i32* %12, align 4
  store i32 1, i32* %6, align 4
  br label %254

254:                                              ; preds = %278, %250
  %255 = load i32, i32* %12, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %282

257:                                              ; preds = %254
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %257
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %12, align 4
  %276 = add i32 %275, -1
  store i32 %276, i32* %12, align 4
  br label %277

277:                                              ; preds = %266, %257
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %6, align 4
  %280 = and i32 %279, 127
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %6, align 4
  br label %254

282:                                              ; preds = %254
  br label %283

283:                                              ; preds = %282, %143
  %284 = load i32, i32* %8, align 4
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 8
  store i32 1, i32* %6, align 4
  br label %287

287:                                              ; preds = %307, %283
  %288 = load i32, i32* %6, align 4
  %289 = icmp slt i32 %288, 257
  br i1 %289, label %290, label %310

290:                                              ; preds = %287
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %6, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = add i32 %305, %298
  store i32 %306, i32* %304, align 4
  br label %307

307:                                              ; preds = %290
  %308 = load i32, i32* %6, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %6, align 4
  br label %287

310:                                              ; preds = %287
  store i32 0, i32* %3, align 4
  br label %311

311:                                              ; preds = %310, %244, %236, %190, %141, %127, %86, %58, %38
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i64 @lag_decode_prob(i32*, i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @show_bits_long(i32*, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i64 @softfloat_reciprocal(i32) #1

declare dso_local i8* @softfloat_mul(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
