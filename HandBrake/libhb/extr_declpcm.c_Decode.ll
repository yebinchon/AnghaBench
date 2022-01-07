; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_declpcm.c_Decode.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_declpcm.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, i64, i64, i32, i64, i32, i32 }

@hdr2layout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"declpcm: hb_audio_resample_update() failed\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_10__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @Decode(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %322

28:                                               ; preds = %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %28
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @realloc(i64 %47, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 9
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %44, %28
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to float*
  store float* %59, float** %7, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %62, %65
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %241 [
    i32 16, label %70
    i32 20, label %108
    i32 24, label %180
  ]

70:                                               ; preds = %55
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %9, align 8
  br label %74

74:                                               ; preds = %106, %70
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %103, %78
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %79
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 24
  %90 = ashr i32 %89, 16
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %90, %93
  %95 = sitofp i32 %94 to float
  %96 = fpext float %95 to double
  %97 = fdiv double %96, 3.276800e+04
  %98 = fptrunc double %97 to float
  %99 = load float*, float** %7, align 8
  %100 = getelementptr inbounds float, float* %99, i32 1
  store float* %100, float** %7, align 8
  store float %98, float* %99, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32* %102, i32** %9, align 8
  br label %103

103:                                              ; preds = %85
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %79

106:                                              ; preds = %79
  br label %74

107:                                              ; preds = %74
  br label %241

108:                                              ; preds = %55
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %11, align 8
  br label %112

112:                                              ; preds = %177, %108
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %8, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %116, label %179

116:                                              ; preds = %112
  store i32 4, i32* %14, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 4, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  store i32* %123, i32** %15, align 8
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %174, %116
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 2
  br i1 %126, label %127, label %177

127:                                              ; preds = %124
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %170, %127
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %173

134:                                              ; preds = %128
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 24
  %139 = ashr i32 %138, 12
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 4
  %144 = or i32 %139, %143
  %145 = load i32*, i32** %15, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %14, align 4
  %149 = ashr i32 %147, %148
  %150 = and i32 %149, 15
  %151 = or i32 %144, %150
  %152 = sitofp i32 %151 to float
  %153 = fpext float %152 to double
  %154 = fdiv double %153, 5.242880e+05
  %155 = fptrunc double %154 to float
  %156 = load float*, float** %7, align 8
  store float %155, float* %156, align 4
  %157 = load float*, float** %7, align 8
  %158 = getelementptr inbounds float, float* %157, i32 1
  store float* %158, float** %7, align 8
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load i32*, i32** %15, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %15, align 8
  %166 = load i32, i32* %14, align 4
  %167 = xor i32 %166, 4
  store i32 %167, i32* %14, align 4
  %168 = load i32*, i32** %11, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  store i32* %169, i32** %11, align 8
  br label %170

170:                                              ; preds = %134
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %128

173:                                              ; preds = %128
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %124

177:                                              ; preds = %124
  %178 = load i32*, i32** %15, align 8
  store i32* %178, i32** %11, align 8
  br label %112

179:                                              ; preds = %112
  br label %241

180:                                              ; preds = %55
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  store i32* %183, i32** %16, align 8
  br label %184

184:                                              ; preds = %238, %180
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %8, align 4
  %187 = icmp ne i32 %185, 0
  br i1 %187, label %188, label %240

188:                                              ; preds = %184
  %189 = load i32*, i32** %16, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 4, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %189, i64 %194
  store i32* %195, i32** %19, align 8
  store i32 0, i32* %17, align 4
  br label %196

196:                                              ; preds = %235, %188
  %197 = load i32, i32* %17, align 4
  %198 = icmp slt i32 %197, 2
  br i1 %198, label %199, label %238

199:                                              ; preds = %196
  store i32 0, i32* %18, align 4
  br label %200

200:                                              ; preds = %231, %199
  %201 = load i32, i32* %18, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %234

206:                                              ; preds = %200
  %207 = load i32*, i32** %16, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 %209, 24
  %211 = ashr i32 %210, 8
  %212 = load i32*, i32** %16, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 8
  %216 = or i32 %211, %215
  %217 = load i32*, i32** %19, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %216, %219
  %221 = sitofp i32 %220 to float
  %222 = fpext float %221 to double
  %223 = fdiv double %222, 0x4160000000000000
  %224 = fptrunc double %223 to float
  %225 = load float*, float** %7, align 8
  %226 = getelementptr inbounds float, float* %225, i32 1
  store float* %226, float** %7, align 8
  store float %224, float* %225, align 4
  %227 = load i32*, i32** %16, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  store i32* %228, i32** %16, align 8
  %229 = load i32*, i32** %19, align 8
  %230 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %230, i32** %19, align 8
  br label %231

231:                                              ; preds = %206
  %232 = load i32, i32* %18, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %18, align 4
  br label %200

234:                                              ; preds = %200
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %17, align 4
  br label %196

238:                                              ; preds = %196
  %239 = load i32*, i32** %19, align 8
  store i32* %239, i32** %16, align 8
  br label %184

240:                                              ; preds = %184
  br label %241

241:                                              ; preds = %55, %240, %179, %107
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 10
  %244 = load i32, i32* %243, align 8
  %245 = load i32*, i32** @hdr2layout, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %245, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @hb_audio_resample_set_channel_layout(i32 %244, i32 %252)
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 10
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 11
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @hb_audio_resample_set_sample_rate(i32 %256, i32 %259)
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 10
  %263 = load i32, i32* %262, align 8
  %264 = call i64 @hb_audio_resample_update(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %241
  %267 = call i32 @hb_log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %322

268:                                              ; preds = %241
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 10
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 9
  %274 = bitcast i64* %273 to i32**
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call %struct.TYPE_11__* @hb_audio_resample(i32 %271, i32** %274, i32 %277)
  store %struct.TYPE_11__* %278, %struct.TYPE_11__** %5, align 8
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %280 = icmp ne %struct.TYPE_11__* %279, null
  br i1 %280, label %281, label %320

281:                                              ; preds = %268
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 6
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  store i64 %284, i64* %287, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 7
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  store i64 %290, i64* %293, align 8
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 6
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %299, label %313

299:                                              ; preds = %281
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 6
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %305, %302
  store i64 %306, i64* %304, align 8
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 6
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 2
  store i64 %309, i64* %312, align 8
  br label %313

313:                                              ; preds = %299, %281
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 8
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 3
  store i32 %316, i32* %319, align 8
  br label %320

320:                                              ; preds = %313, %268
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %321, %struct.TYPE_11__** %2, align 8
  br label %322

322:                                              ; preds = %320, %266, %27
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %323
}

declare dso_local i64 @realloc(i64, i32) #1

declare dso_local i32 @hb_audio_resample_set_channel_layout(i32, i32) #1

declare dso_local i32 @hb_audio_resample_set_sample_rate(i32, i32) #1

declare dso_local i64 @hb_audio_resample_update(i32) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local %struct.TYPE_11__* @hb_audio_resample(i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
