; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_PaintChannels.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_PaintChannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_18__ = type { double, double, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32* }

@s_volume = common dso_local global %struct.TYPE_19__* null, align 8
@snd_vol = common dso_local global i32 0, align 4
@s_paintedtime = common dso_local global i32 0, align 4
@PAINTBUFFER_SIZE = common dso_local global i32 0, align 4
@s_rawend = common dso_local global i32 0, align 4
@paintbuffer = common dso_local global %struct.TYPE_20__* null, align 8
@MAX_RAW_SAMPLES = common dso_local global i32 0, align 4
@s_rawsamples = common dso_local global %struct.TYPE_20__* null, align 8
@s_channels = common dso_local global %struct.TYPE_18__* null, align 8
@MAX_CHANNELS = common dso_local global i32 0, align 4
@loop_channels = common dso_local global %struct.TYPE_18__* null, align 8
@numLoopChannels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_PaintChannels(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** @s_volume, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 255
  store i32 %15, i32* @snd_vol, align 4
  br label %16

16:                                               ; preds = %349, %1
  %17 = load i32, i32* @s_paintedtime, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %353

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @s_paintedtime, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* @PAINTBUFFER_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @s_paintedtime, align 4
  %29 = load i32, i32* @PAINTBUFFER_SIZE, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* @s_rawend, align 4
  %33 = load i32, i32* @s_paintedtime, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* @s_rawend, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38, %35
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** @paintbuffer, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @s_paintedtime, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @Com_Memset(%struct.TYPE_20__* %40, i32 0, i32 %46)
  br label %107

48:                                               ; preds = %31
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @s_rawend, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @s_rawend, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @s_paintedtime, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %80, %56
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %64, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** @paintbuffer, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @s_paintedtime, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i64 %72
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** @s_rawsamples, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i64 %76
  %78 = bitcast %struct.TYPE_20__* %73 to i8*
  %79 = bitcast %struct.TYPE_20__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %59

83:                                               ; preds = %59
  br label %84

84:                                               ; preds = %103, %83
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** @paintbuffer, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @s_paintedtime, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** @paintbuffer, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @s_paintedtime, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %84

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106, %39
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** @s_channels, align 8
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %5, align 8
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %213, %107
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @MAX_CHANNELS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %218

113:                                              ; preds = %109
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = icmp ne %struct.TYPE_17__* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load double, double* %120, align 8
  %122 = fcmp olt double %121, 2.500000e-01
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load double, double* %125, align 8
  %127 = fcmp olt double %126, 2.500000e-01
  br i1 %127, label %128, label %129

128:                                              ; preds = %123, %113
  br label %213

129:                                              ; preds = %123, %118
  %130 = load i32, i32* @s_paintedtime, align 4
  store i32 %130, i32* %7, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  store %struct.TYPE_17__* %133, %struct.TYPE_17__** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %142, %143
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %144, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %129
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %149, %129
  %156 = load i32, i32* %8, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %212

158:                                              ; preds = %155
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @s_paintedtime, align 4
  %170 = sub nsw i32 %168, %169
  %171 = call i32 @S_PaintChannelFromADPCM(%struct.TYPE_18__* %164, %struct.TYPE_17__* %165, i32 %166, i32 %167, i32 %170)
  br label %211

172:                                              ; preds = %158
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @s_paintedtime, align 4
  %184 = sub nsw i32 %182, %183
  %185 = call i32 @S_PaintChannelFromWavelet(%struct.TYPE_18__* %178, %struct.TYPE_17__* %179, i32 %180, i32 %181, i32 %184)
  br label %210

186:                                              ; preds = %172
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 3
  br i1 %190, label %191, label %200

191:                                              ; preds = %186
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @s_paintedtime, align 4
  %198 = sub nsw i32 %196, %197
  %199 = call i32 @S_PaintChannelFromMuLaw(%struct.TYPE_18__* %192, %struct.TYPE_17__* %193, i32 %194, i32 %195, i32 %198)
  br label %209

200:                                              ; preds = %186
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @s_paintedtime, align 4
  %207 = sub nsw i32 %205, %206
  %208 = call i32 @S_PaintChannelFrom16(%struct.TYPE_18__* %201, %struct.TYPE_17__* %202, i32 %203, i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %200, %191
  br label %210

210:                                              ; preds = %209, %177
  br label %211

211:                                              ; preds = %210, %163
  br label %212

212:                                              ; preds = %211, %155
  br label %213

213:                                              ; preds = %212, %128
  %214 = load i32, i32* %3, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %3, align 4
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 1
  store %struct.TYPE_18__* %217, %struct.TYPE_18__** %5, align 8
  br label %109

218:                                              ; preds = %109
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** @loop_channels, align 8
  store %struct.TYPE_18__* %219, %struct.TYPE_18__** %5, align 8
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %344, %218
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* @numLoopChannels, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %349

224:                                              ; preds = %220
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = icmp ne %struct.TYPE_17__* %227, null
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 0
  %232 = load double, double* %231, align 8
  %233 = fcmp une double %232, 0.000000e+00
  br i1 %233, label %240, label %234

234:                                              ; preds = %229
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 1
  %237 = load double, double* %236, align 8
  %238 = fcmp une double %237, 0.000000e+00
  br i1 %238, label %240, label %239

239:                                              ; preds = %234, %224
  br label %344

240:                                              ; preds = %234, %229
  %241 = load i32, i32* @s_paintedtime, align 4
  store i32 %241, i32* %7, align 4
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  store %struct.TYPE_17__* %244, %struct.TYPE_17__** %6, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = icmp eq i32* %247, null
  br i1 %248, label %254, label %249

249:                                              ; preds = %240
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249, %240
  br label %344

255:                                              ; preds = %249
  br label %256

256:                                              ; preds = %339, %255
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = srem i32 %257, %260
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* %7, align 4
  %264 = sub nsw i32 %262, %263
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %265, %266
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp sgt i32 %267, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %256
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sub nsw i32 %275, %276
  store i32 %277, i32* %8, align 4
  br label %278

278:                                              ; preds = %272, %256
  %279 = load i32, i32* %8, align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %338

281:                                              ; preds = %278
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %286, label %295

286:                                              ; preds = %281
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @s_paintedtime, align 4
  %293 = sub nsw i32 %291, %292
  %294 = call i32 @S_PaintChannelFromADPCM(%struct.TYPE_18__* %287, %struct.TYPE_17__* %288, i32 %289, i32 %290, i32 %293)
  br label %334

295:                                              ; preds = %281
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 2
  br i1 %299, label %300, label %309

300:                                              ; preds = %295
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* @s_paintedtime, align 4
  %307 = sub nsw i32 %305, %306
  %308 = call i32 @S_PaintChannelFromWavelet(%struct.TYPE_18__* %301, %struct.TYPE_17__* %302, i32 %303, i32 %304, i32 %307)
  br label %333

309:                                              ; preds = %295
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp eq i32 %312, 3
  br i1 %313, label %314, label %323

314:                                              ; preds = %309
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* @s_paintedtime, align 4
  %321 = sub nsw i32 %319, %320
  %322 = call i32 @S_PaintChannelFromMuLaw(%struct.TYPE_18__* %315, %struct.TYPE_17__* %316, i32 %317, i32 %318, i32 %321)
  br label %332

323:                                              ; preds = %309
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* @s_paintedtime, align 4
  %330 = sub nsw i32 %328, %329
  %331 = call i32 @S_PaintChannelFrom16(%struct.TYPE_18__* %324, %struct.TYPE_17__* %325, i32 %326, i32 %327, i32 %330)
  br label %332

332:                                              ; preds = %323, %314
  br label %333

333:                                              ; preds = %332, %300
  br label %334

334:                                              ; preds = %333, %286
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* %7, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %7, align 4
  br label %338

338:                                              ; preds = %334, %278
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %7, align 4
  %341 = load i32, i32* %4, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %256, label %343

343:                                              ; preds = %339
  br label %344

344:                                              ; preds = %343, %254, %239
  %345 = load i32, i32* %3, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %3, align 4
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 1
  store %struct.TYPE_18__* %348, %struct.TYPE_18__** %5, align 8
  br label %220

349:                                              ; preds = %220
  %350 = load i32, i32* %4, align 4
  %351 = call i32 @S_TransferPaintBuffer(i32 %350)
  %352 = load i32, i32* %4, align 4
  store i32 %352, i32* @s_paintedtime, align 4
  br label %16

353:                                              ; preds = %16
  ret void
}

declare dso_local i32 @Com_Memset(%struct.TYPE_20__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @S_PaintChannelFromADPCM(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @S_PaintChannelFromWavelet(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @S_PaintChannelFromMuLaw(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @S_PaintChannelFrom16(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @S_TransferPaintBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
