; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32*, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i64*, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %6, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %7, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %25, i64 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %8, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 32, %30
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__* %32, i32 %35)
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %9, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %38 = icmp ne %struct.TYPE_17__* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %2
  %40 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %322

43:                                               ; preds = %2
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %44, %struct.TYPE_17__* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = call i32 @av_frame_free(%struct.TYPE_17__** %9)
  %51 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %3, align 4
  br label %322

53:                                               ; preds = %43
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %12, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %226 [
    i32 130, label %68
    i32 131, label %114
    i32 128, label %145
    i32 129, label %193
  ]

68:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %110, %68
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %113

75:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %106, %75
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %76
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 4
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %96, i64 %104
  store i32 %95, i32* %105, align 4
  br label %106

106:                                              ; preds = %82
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %76

109:                                              ; preds = %76
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %69

113:                                              ; preds = %69
  br label %226

114:                                              ; preds = %53
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %10, align 8
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %141, %114
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %125, %128
  %130 = icmp slt i32 %122, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %121
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %121

144:                                              ; preds = %121
  br label %226

145:                                              ; preds = %53
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %189, %145
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %192

152:                                              ; preds = %146
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %185, %152
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %188

159:                                              ; preds = %153
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 4
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i32*
  store i32* %167, i32** %11, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %16, align 4
  %174 = ashr i32 %172, %173
  %175 = load i32*, i32** %12, align 8
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 %176, %179
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %175, i64 %183
  store i32 %174, i32* %184, align 4
  br label %185

185:                                              ; preds = %159
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %153

188:                                              ; preds = %153
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %146

192:                                              ; preds = %146
  br label %226

193:                                              ; preds = %53
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 3
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 0
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to i32*
  store i32* %199, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %200

200:                                              ; preds = %222, %193
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = mul nsw i32 %204, %207
  %209 = icmp slt i32 %201, %208
  br i1 %209, label %210, label %225

210:                                              ; preds = %200
  %211 = load i32*, i32** %11, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %16, align 4
  %217 = ashr i32 %215, %216
  %218 = load i32*, i32** %12, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %217, i32* %221, align 4
  br label %222

222:                                              ; preds = %210
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %13, align 4
  br label %200

225:                                              ; preds = %200
  br label %226

226:                                              ; preds = %53, %225, %192, %144, %113
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %258

231:                                              ; preds = %226
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 2
  %234 = call i32 @hdcd_detect_start(i32* %233)
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %236 = load i32*, i32** %12, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @hdcd_process_stereo(%struct.TYPE_16__* %235, i32* %236, i32 %239)
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 2
  %247 = call i32 @hdcd_detect_onech(i32* %244, i32* %246)
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 2
  %254 = call i32 @hdcd_detect_onech(i32* %251, i32* %253)
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 2
  %257 = call i32 @hdcd_detect_end(i32* %256, i32 2)
  br label %306

258:                                              ; preds = %226
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 2
  %261 = call i32 @hdcd_detect_start(i32* %260)
  store i32 0, i32* %14, align 4
  br label %262

262:                                              ; preds = %296, %258
  %263 = load i32, i32* %14, align 4
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %299

268:                                              ; preds = %262
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32*, i32** %12, align 8
  %277 = load i32, i32* %14, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @hdcd_process(%struct.TYPE_16__* %269, i32* %275, i32* %279, i32 %282, i32 %285)
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 3
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 2
  %295 = call i32 @hdcd_detect_onech(i32* %292, i32* %294)
  br label %296

296:                                              ; preds = %268
  %297 = load i32, i32* %14, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %14, align 4
  br label %262

299:                                              ; preds = %262
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @hdcd_detect_end(i32* %301, i32 %304)
  br label %306

306:                                              ; preds = %299, %231
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = mul nsw i32 %309, %312
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %321 = call i32 @ff_filter_frame(%struct.TYPE_18__* %319, %struct.TYPE_17__* %320)
  store i32 %321, i32* %3, align 4
  br label %322

322:                                              ; preds = %306, %49, %39
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @hdcd_detect_start(i32*) #1

declare dso_local i32 @hdcd_process_stereo(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @hdcd_detect_onech(i32*, i32*) #1

declare dso_local i32 @hdcd_detect_end(i32*, i32) #1

declare dso_local i32 @hdcd_process(%struct.TYPE_16__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
