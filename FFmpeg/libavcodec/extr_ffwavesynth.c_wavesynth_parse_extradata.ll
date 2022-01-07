; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_parse_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_parse_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32*, %struct.wavesynth_context* }
%struct.wavesynth_context = type { i32, %struct.ws_interval* }
%struct.ws_interval = type { i64, i64, i32, i64, i64, i64, i64, i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @wavesynth_parse_extradata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavesynth_parse_extradata(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.wavesynth_context*, align 8
  %5 = alloca %struct.ws_interval*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load %struct.wavesynth_context*, %struct.wavesynth_context** %19, align 8
  store %struct.wavesynth_context* %20, %struct.wavesynth_context** %4, align 8
  store i64 -9223372036854775808, i64* %16, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %309

28:                                               ; preds = %1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i8* @AV_RL32(i32* %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %42 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32* %44, i32** %6, align 8
  %45 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %46 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %28
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = sdiv i64 %55, 24
  %57 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %58 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %56, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %49, %28
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %309

65:                                               ; preds = %49
  %66 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %67 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.ws_interval* @av_calloc(i32 %68, i32 72)
  %70 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %71 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %70, i32 0, i32 1
  store %struct.ws_interval* %69, %struct.ws_interval** %71, align 8
  %72 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %73 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %72, i32 0, i32 1
  %74 = load %struct.ws_interval*, %struct.ws_interval** %73, align 8
  %75 = icmp ne %struct.ws_interval* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %309

79:                                               ; preds = %65
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %298, %79
  %81 = load i32, i32* %17, align 4
  %82 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %83 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %301

86:                                               ; preds = %80
  %87 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %88 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %87, i32 0, i32 1
  %89 = load %struct.ws_interval*, %struct.ws_interval** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %89, i64 %91
  store %struct.ws_interval* %92, %struct.ws_interval** %5, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = ptrtoint i32* %93 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = icmp slt i64 %98, 24
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load i32, i32* @EINVAL, align 4
  %102 = call i32 @AVERROR(i32 %101)
  store i32 %102, i32* %2, align 4
  br label %309

103:                                              ; preds = %86
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = call i8* @AV_RL64(i32* %105)
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %109 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 8
  %112 = call i8* @AV_RL64(i32* %111)
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %115 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 16
  %118 = call i8* @AV_RL32(i32* %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %121 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 20
  %124 = call i8* @AV_RL32(i32* %123)
  %125 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %126 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 24
  store i32* %128, i32** %6, align 8
  %129 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %130 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %16, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %152, label %134

134:                                              ; preds = %103
  %135 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %136 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %139 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sle i64 %137, %140
  br i1 %141, label %152, label %142

142:                                              ; preds = %134
  %143 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %144 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %147 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %145, %148
  %150 = load i64, i64* @INT64_MAX, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %142, %134, %103
  %153 = load i32, i32* @EINVAL, align 4
  %154 = call i32 @AVERROR(i32 %153)
  store i32 %154, i32* %2, align 4
  br label %309

155:                                              ; preds = %142
  %156 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %157 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %16, align 8
  %159 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %160 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %163 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %161, %164
  store i64 %165, i64* %15, align 8
  %166 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %167 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  switch i32 %168, label %278 [
    i32 128, label %169
    i32 129, label %258
  ]

169:                                              ; preds = %155
  %170 = load i32*, i32** %7, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = ptrtoint i32* %170 to i64
  %173 = ptrtoint i32* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  %176 = icmp slt i64 %175, 20
  br i1 %176, label %182, label %177

177:                                              ; preds = %169
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp sle i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177, %169
  %183 = load i32, i32* @EINVAL, align 4
  %184 = call i32 @AVERROR(i32 %183)
  store i32 %184, i32* %2, align 4
  br label %309

185:                                              ; preds = %177
  %186 = load i32*, i32** %6, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = call i8* @AV_RL32(i32* %187)
  store i8* %188, i8** %8, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 4
  %191 = call i8* @AV_RL32(i32* %190)
  store i8* %191, i8** %9, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 8
  %194 = call i8* @AV_RL32(i32* %193)
  store i8* %194, i8** %10, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 12
  %197 = call i8* @AV_RL32(i32* %196)
  store i8* %197, i8** %11, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 16
  %200 = call i8* @AV_RL32(i32* %199)
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* %12, align 4
  %202 = load i32*, i32** %6, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 20
  store i32* %203, i32** %6, align 8
  %204 = load i8*, i8** %8, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = shl i64 %207, 16
  %209 = call i64 @frac64(i8* %204, i64 %208)
  store i64 %209, i64* %13, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = shl i64 %213, 16
  %215 = call i64 @frac64(i8* %210, i64 %214)
  store i64 %215, i64* %14, align 8
  %216 = load i64, i64* %13, align 8
  %217 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %218 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %217, i32 0, i32 7
  store i64 %216, i64* %218, align 8
  %219 = load i64, i64* %14, align 8
  %220 = load i64, i64* %13, align 8
  %221 = sub nsw i64 %219, %220
  %222 = load i64, i64* %15, align 8
  %223 = sdiv i64 %221, %222
  %224 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %225 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %224, i32 0, i32 6
  store i64 %223, i64* %225, align 8
  %226 = load i32, i32* %12, align 4
  %227 = and i32 %226, -2147483648
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %251

229:                                              ; preds = %185
  %230 = load i32, i32* %12, align 4
  %231 = and i32 %230, 2147483647
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %17, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load i32, i32* @EINVAL, align 4
  %237 = call i32 @AVERROR(i32 %236)
  store i32 %237, i32* %2, align 4
  br label %309

238:                                              ; preds = %229
  %239 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %240 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %239, i32 0, i32 1
  %241 = load %struct.ws_interval*, %struct.ws_interval** %240, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %241, i64 %243
  %245 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %246 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @phi_at(%struct.ws_interval* %244, i64 %247)
  %249 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %250 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %249, i32 0, i32 5
  store i64 %248, i64* %250, align 8
  br label %257

251:                                              ; preds = %185
  %252 = load i32, i32* %12, align 4
  %253 = sext i32 %252 to i64
  %254 = shl i64 %253, 33
  %255 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %256 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %255, i32 0, i32 5
  store i64 %254, i64* %256, align 8
  br label %257

257:                                              ; preds = %251, %238
  br label %281

258:                                              ; preds = %155
  %259 = load i32*, i32** %7, align 8
  %260 = load i32*, i32** %6, align 8
  %261 = ptrtoint i32* %259 to i64
  %262 = ptrtoint i32* %260 to i64
  %263 = sub i64 %261, %262
  %264 = sdiv exact i64 %263, 4
  %265 = icmp slt i64 %264, 8
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load i32, i32* @EINVAL, align 4
  %268 = call i32 @AVERROR(i32 %267)
  store i32 %268, i32* %2, align 4
  br label %309

269:                                              ; preds = %258
  %270 = load i32*, i32** %6, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = call i8* @AV_RL32(i32* %271)
  store i8* %272, i8** %10, align 8
  %273 = load i32*, i32** %6, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 4
  %275 = call i8* @AV_RL32(i32* %274)
  store i8* %275, i8** %11, align 8
  %276 = load i32*, i32** %6, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 8
  store i32* %277, i32** %6, align 8
  br label %281

278:                                              ; preds = %155
  %279 = load i32, i32* @EINVAL, align 4
  %280 = call i32 @AVERROR(i32 %279)
  store i32 %280, i32* %2, align 4
  br label %309

281:                                              ; preds = %269, %257
  %282 = load i8*, i8** %10, align 8
  %283 = ptrtoint i8* %282 to i64
  %284 = shl i64 %283, 32
  %285 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %286 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %285, i32 0, i32 4
  store i64 %284, i64* %286, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = ptrtoint i8* %287 to i64
  %289 = shl i64 %288, 32
  %290 = load i8*, i8** %10, align 8
  %291 = ptrtoint i8* %290 to i64
  %292 = shl i64 %291, 32
  %293 = sub nsw i64 %289, %292
  %294 = load i64, i64* %15, align 8
  %295 = sdiv i64 %293, %294
  %296 = load %struct.ws_interval*, %struct.ws_interval** %5, align 8
  %297 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %296, i32 0, i32 3
  store i64 %295, i64* %297, align 8
  br label %298

298:                                              ; preds = %281
  %299 = load i32, i32* %17, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %17, align 4
  br label %80

301:                                              ; preds = %80
  %302 = load i32*, i32** %6, align 8
  %303 = load i32*, i32** %7, align 8
  %304 = icmp ne i32* %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load i32, i32* @EINVAL, align 4
  %307 = call i32 @AVERROR(i32 %306)
  store i32 %307, i32* %2, align 4
  br label %309

308:                                              ; preds = %301
  store i32 0, i32* %2, align 4
  br label %309

309:                                              ; preds = %308, %305, %278, %266, %235, %182, %152, %100, %76, %62, %25
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @AV_RL32(i32*) #1

declare dso_local %struct.ws_interval* @av_calloc(i32, i32) #1

declare dso_local i8* @AV_RL64(i32*) #1

declare dso_local i64 @frac64(i8*, i64) #1

declare dso_local i64 @phi_at(%struct.ws_interval*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
