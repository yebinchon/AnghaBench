; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_set_anamorphic_size2.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_set_anamorphic_size2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i64, i64, i64, i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@HB_KEEP_DISPLAY_ASPECT = common dso_local global i32 0, align 4
@HB_KEEP_HEIGHT = common dso_local global i32 0, align 4
@HB_MIN_WIDTH = common dso_local global i32 0, align 4
@HB_MAX_WIDTH = common dso_local global i32 0, align 4
@HB_MIN_HEIGHT = common dso_local global i32 0, align 4
@HB_MAX_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_set_anamorphic_size2(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @HB_KEEP_DISPLAY_ASPECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HB_KEEP_HEIGHT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %46, %51
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %52, %57
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %61, %66
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %67, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sitofp i32 %74 to double
  %76 = load i32, i32* %12, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %75, %77
  store double %78, double* %13, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %3
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @EVEN(i64 %86)
  br label %89

88:                                               ; preds = %3
  br label %89

89:                                               ; preds = %88, %83
  %90 = phi i32 [ %87, %83 ], [ 2, %88 ]
  store i32 %90, i32* %14, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %89
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97, %89
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %104, %97
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119, %113
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %119
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @hb_reduce(i32* %133, i32* %134, i32 %139, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %15, align 4
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %16, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = bitcast %struct.TYPE_11__* %17 to i8*
  %153 = bitcast %struct.TYPE_11__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 4 %153, i64 8, i1 false)
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 720
  br i1 %157, label %158, label %212

158:                                              ; preds = %132
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %212

163:                                              ; preds = %158
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %166, %168
  %170 = sitofp i32 %169 to double
  %171 = fmul double %170, 9.000000e+00
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %174, %176
  %178 = sitofp i32 %177 to double
  %179 = fdiv double %171, %178
  %180 = fptosi double %179 to i32
  store i32 %180, i32* %18, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 480
  br i1 %184, label %185, label %195

185:                                              ; preds = %163
  %186 = load i32, i32* %18, align 4
  %187 = icmp eq i32 %186, 16
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 40, i32* %15, align 4
  store i32 33, i32* %16, align 4
  br label %194

189:                                              ; preds = %185
  %190 = load i32, i32* %18, align 4
  %191 = icmp eq i32 %190, 12
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 10, i32* %15, align 4
  store i32 11, i32* %16, align 4
  br label %193

193:                                              ; preds = %192, %189
  br label %194

194:                                              ; preds = %193, %188
  br label %211

195:                                              ; preds = %163
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 576
  br i1 %199, label %200, label %210

200:                                              ; preds = %195
  %201 = load i32, i32* %18, align 4
  %202 = icmp eq i32 %201, 16
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 16, i32* %15, align 4
  store i32 11, i32* %16, align 4
  br label %209

204:                                              ; preds = %200
  %205 = load i32, i32* %18, align 4
  %206 = icmp eq i32 %205, 12
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 12, i32* %15, align 4
  store i32 11, i32* %16, align 4
  br label %208

208:                                              ; preds = %207, %204
  br label %209

209:                                              ; preds = %208, %203
  br label %210

210:                                              ; preds = %209, %195
  br label %211

211:                                              ; preds = %210, %194
  br label %212

212:                                              ; preds = %211, %158, %132
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @MULTIPLE_MOD_DOWN(i64 %220, i32 %221)
  %223 = load i32, i32* @HB_MIN_WIDTH, align 4
  %224 = call i32 @MAX(i32 %222, i32 %223)
  %225 = load i32, i32* @HB_MAX_WIDTH, align 4
  %226 = call i32 @MIN(i32 %224, i32 %225)
  store i32 %226, i32* %21, align 4
  br label %229

227:                                              ; preds = %212
  %228 = load i32, i32* @HB_MAX_WIDTH, align 4
  store i32 %228, i32* %21, align 4
  br label %229

229:                                              ; preds = %227, %217
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %14, align 4
  %239 = call i32 @MULTIPLE_MOD_DOWN(i64 %237, i32 %238)
  %240 = load i32, i32* @HB_MIN_HEIGHT, align 4
  %241 = call i32 @MAX(i32 %239, i32 %240)
  %242 = load i32, i32* @HB_MAX_HEIGHT, align 4
  %243 = call i32 @MIN(i32 %241, i32 %242)
  store i32 %243, i32* %22, align 4
  br label %246

244:                                              ; preds = %229
  %245 = load i32, i32* @HB_MAX_HEIGHT, align 4
  store i32 %245, i32* %22, align 4
  br label %246

246:                                              ; preds = %244, %234
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  switch i32 %249, label %558 [
    i32 129, label %250
    i32 128, label %386
    i32 130, label %403
    i32 131, label %505
    i32 132, label %559
  ]

250:                                              ; preds = %246
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = sitofp i32 %254 to double
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = sitofp i32 %259 to double
  %261 = fdiv double %255, %260
  store double %261, double* %23, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sitofp i32 %262 to double
  %264 = load i32, i32* %12, align 4
  %265 = sitofp i32 %264 to double
  %266 = fdiv double %263, %265
  store double %266, double* %24, align 8
  %267 = load double, double* %23, align 8
  %268 = load double, double* %24, align 8
  %269 = fmul double %267, %268
  store double %269, double* %25, align 8
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %304

272:                                              ; preds = %250
  %273 = load i32, i32* %10, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %289, label %275

275:                                              ; preds = %272
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 6
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @MULTIPLE_MOD_UP(i32 %279, i32 %280)
  store i32 %281, i32* %19, align 4
  %282 = load i32, i32* %19, align 4
  %283 = sitofp i32 %282 to double
  %284 = load double, double* %25, align 8
  %285 = fdiv double %283, %284
  %286 = fptosi double %285 to i32
  %287 = load i32, i32* %14, align 4
  %288 = call i32 @MULTIPLE_MOD(i32 %286, i32 %287)
  store i32 %288, i32* %20, align 4
  br label %303

289:                                              ; preds = %272
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 6
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %14, align 4
  %295 = call i32 @MULTIPLE_MOD_UP(i32 %293, i32 %294)
  store i32 %295, i32* %20, align 4
  %296 = load i32, i32* %20, align 4
  %297 = sitofp i32 %296 to double
  %298 = load double, double* %25, align 8
  %299 = fmul double %297, %298
  %300 = fptosi double %299 to i32
  %301 = load i32, i32* %14, align 4
  %302 = call i32 @MULTIPLE_MOD(i32 %300, i32 %301)
  store i32 %302, i32* %19, align 4
  br label %303

303:                                              ; preds = %289, %275
  br label %317

304:                                              ; preds = %250
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %14, align 4
  %310 = call i32 @MULTIPLE_MOD_UP(i32 %308, i32 %309)
  store i32 %310, i32* %19, align 4
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 6
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %14, align 4
  %316 = call i32 @MULTIPLE_MOD_UP(i32 %314, i32 %315)
  store i32 %316, i32* %20, align 4
  br label %317

317:                                              ; preds = %304, %303
  %318 = load i32, i32* %19, align 4
  %319 = load i32, i32* @HB_MIN_WIDTH, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %334

321:                                              ; preds = %317
  %322 = load i32, i32* @HB_MIN_WIDTH, align 4
  store i32 %322, i32* %19, align 4
  %323 = load i32, i32* %9, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %321
  %326 = load i32, i32* %19, align 4
  %327 = sitofp i32 %326 to double
  %328 = load double, double* %25, align 8
  %329 = fdiv double %327, %328
  %330 = fptosi double %329 to i32
  %331 = load i32, i32* %14, align 4
  %332 = call i32 @MULTIPLE_MOD(i32 %330, i32 %331)
  store i32 %332, i32* %20, align 4
  br label %333

333:                                              ; preds = %325, %321
  br label %334

334:                                              ; preds = %333, %317
  %335 = load i32, i32* %20, align 4
  %336 = load i32, i32* @HB_MIN_HEIGHT, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %351

338:                                              ; preds = %334
  %339 = load i32, i32* @HB_MIN_HEIGHT, align 4
  store i32 %339, i32* %20, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %338
  %343 = load i32, i32* %20, align 4
  %344 = sitofp i32 %343 to double
  %345 = load double, double* %25, align 8
  %346 = fmul double %344, %345
  %347 = fptosi double %346 to i32
  %348 = load i32, i32* %14, align 4
  %349 = call i32 @MULTIPLE_MOD(i32 %347, i32 %348)
  store i32 %349, i32* %19, align 4
  br label %350

350:                                              ; preds = %342, %338
  br label %351

351:                                              ; preds = %350, %334
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* %21, align 4
  %354 = icmp sgt i32 %352, %353
  br i1 %354, label %355, label %368

355:                                              ; preds = %351
  %356 = load i32, i32* %21, align 4
  store i32 %356, i32* %19, align 4
  %357 = load i32, i32* %9, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %355
  %360 = load i32, i32* %19, align 4
  %361 = sitofp i32 %360 to double
  %362 = load double, double* %25, align 8
  %363 = fdiv double %361, %362
  %364 = fptosi double %363 to i32
  %365 = load i32, i32* %14, align 4
  %366 = call i32 @MULTIPLE_MOD(i32 %364, i32 %365)
  store i32 %366, i32* %20, align 4
  br label %367

367:                                              ; preds = %359, %355
  br label %368

368:                                              ; preds = %367, %351
  %369 = load i32, i32* %20, align 4
  %370 = load i32, i32* %22, align 4
  %371 = icmp sgt i32 %369, %370
  br i1 %371, label %372, label %385

372:                                              ; preds = %368
  %373 = load i32, i32* %22, align 4
  store i32 %373, i32* %20, align 4
  %374 = load i32, i32* %9, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %384

376:                                              ; preds = %372
  %377 = load i32, i32* %20, align 4
  %378 = sitofp i32 %377 to double
  %379 = load double, double* %25, align 8
  %380 = fmul double %378, %379
  %381 = fptosi double %380 to i32
  %382 = load i32, i32* %14, align 4
  %383 = call i32 @MULTIPLE_MOD(i32 %381, i32 %382)
  store i32 %383, i32* %19, align 4
  br label %384

384:                                              ; preds = %376, %372
  br label %385

385:                                              ; preds = %384, %368
  store i32 1, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %608

386:                                              ; preds = %246
  %387 = load i32, i32* %11, align 4
  %388 = call i32 @MULTIPLE_MOD_UP(i32 %387, i32 2)
  store i32 %388, i32* %19, align 4
  %389 = load i32, i32* %12, align 4
  %390 = call i32 @MULTIPLE_MOD_UP(i32 %389, i32 2)
  store i32 %390, i32* %20, align 4
  %391 = load i32, i32* %20, align 4
  %392 = load i32, i32* %11, align 4
  %393 = mul nsw i32 %391, %392
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = mul nsw i32 %393, %395
  store i32 %396, i32* %15, align 4
  %397 = load i32, i32* %19, align 4
  %398 = load i32, i32* %12, align 4
  %399 = mul nsw i32 %397, %398
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = mul nsw i32 %399, %401
  store i32 %402, i32* %16, align 4
  br label %608

403:                                              ; preds = %246
  %404 = load i32, i32* %10, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %421, label %406

406:                                              ; preds = %403
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 6
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %14, align 4
  %412 = call i32 @MULTIPLE_MOD_UP(i32 %410, i32 %411)
  store i32 %412, i32* %19, align 4
  %413 = load i32, i32* %19, align 4
  %414 = sitofp i32 %413 to double
  %415 = load double, double* %13, align 8
  %416 = fdiv double %414, %415
  %417 = fadd double %416, 5.000000e-01
  %418 = fptosi double %417 to i32
  %419 = load i32, i32* %14, align 4
  %420 = call i32 @MULTIPLE_MOD_UP(i32 %418, i32 %419)
  store i32 %420, i32* %20, align 4
  br label %436

421:                                              ; preds = %403
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 6
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %14, align 4
  %427 = call i32 @MULTIPLE_MOD_UP(i32 %425, i32 %426)
  store i32 %427, i32* %20, align 4
  %428 = load i32, i32* %20, align 4
  %429 = sitofp i32 %428 to double
  %430 = load double, double* %13, align 8
  %431 = fmul double %429, %430
  %432 = fadd double %431, 5.000000e-01
  %433 = fptosi double %432 to i32
  %434 = load i32, i32* %14, align 4
  %435 = call i32 @MULTIPLE_MOD_UP(i32 %433, i32 %434)
  store i32 %435, i32* %19, align 4
  br label %436

436:                                              ; preds = %421, %406
  %437 = load i32, i32* %19, align 4
  %438 = load i32, i32* @HB_MIN_WIDTH, align 4
  %439 = icmp slt i32 %437, %438
  br i1 %439, label %440, label %450

440:                                              ; preds = %436
  %441 = load i32, i32* @HB_MIN_WIDTH, align 4
  store i32 %441, i32* %19, align 4
  %442 = load i32, i32* %19, align 4
  %443 = sitofp i32 %442 to double
  %444 = load double, double* %13, align 8
  %445 = fdiv double %443, %444
  %446 = fadd double %445, 5.000000e-01
  %447 = fptosi double %446 to i32
  %448 = load i32, i32* %14, align 4
  %449 = call i32 @MULTIPLE_MOD(i32 %447, i32 %448)
  store i32 %449, i32* %20, align 4
  br label %450

450:                                              ; preds = %440, %436
  %451 = load i32, i32* %20, align 4
  %452 = load i32, i32* @HB_MIN_HEIGHT, align 4
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %454, label %464

454:                                              ; preds = %450
  %455 = load i32, i32* @HB_MIN_HEIGHT, align 4
  store i32 %455, i32* %20, align 4
  %456 = load i32, i32* %20, align 4
  %457 = sitofp i32 %456 to double
  %458 = load double, double* %13, align 8
  %459 = fmul double %457, %458
  %460 = fadd double %459, 5.000000e-01
  %461 = fptosi double %460 to i32
  %462 = load i32, i32* %14, align 4
  %463 = call i32 @MULTIPLE_MOD(i32 %461, i32 %462)
  store i32 %463, i32* %19, align 4
  br label %464

464:                                              ; preds = %454, %450
  %465 = load i32, i32* %19, align 4
  %466 = load i32, i32* %21, align 4
  %467 = icmp sgt i32 %465, %466
  br i1 %467, label %468, label %478

468:                                              ; preds = %464
  %469 = load i32, i32* %21, align 4
  store i32 %469, i32* %19, align 4
  %470 = load i32, i32* %19, align 4
  %471 = sitofp i32 %470 to double
  %472 = load double, double* %13, align 8
  %473 = fdiv double %471, %472
  %474 = fadd double %473, 5.000000e-01
  %475 = fptosi double %474 to i32
  %476 = load i32, i32* %14, align 4
  %477 = call i32 @MULTIPLE_MOD(i32 %475, i32 %476)
  store i32 %477, i32* %20, align 4
  br label %478

478:                                              ; preds = %468, %464
  %479 = load i32, i32* %20, align 4
  %480 = load i32, i32* %22, align 4
  %481 = icmp sgt i32 %479, %480
  br i1 %481, label %482, label %492

482:                                              ; preds = %478
  %483 = load i32, i32* %22, align 4
  store i32 %483, i32* %20, align 4
  %484 = load i32, i32* %20, align 4
  %485 = sitofp i32 %484 to double
  %486 = load double, double* %13, align 8
  %487 = fmul double %485, %486
  %488 = fadd double %487, 5.000000e-01
  %489 = fptosi double %488 to i32
  %490 = load i32, i32* %14, align 4
  %491 = call i32 @MULTIPLE_MOD(i32 %489, i32 %490)
  store i32 %491, i32* %19, align 4
  br label %492

492:                                              ; preds = %482, %478
  %493 = load i32, i32* %20, align 4
  %494 = load i32, i32* %11, align 4
  %495 = mul nsw i32 %493, %494
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = mul nsw i32 %495, %497
  store i32 %498, i32* %15, align 4
  %499 = load i32, i32* %19, align 4
  %500 = load i32, i32* %12, align 4
  %501 = mul nsw i32 %499, %500
  %502 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = mul nsw i32 %501, %503
  store i32 %504, i32* %16, align 4
  br label %608

505:                                              ; preds = %246
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 6
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* %14, align 4
  %511 = call i32 @MULTIPLE_MOD_UP(i32 %509, i32 %510)
  store i32 %511, i32* %19, align 4
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 6
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* %14, align 4
  %517 = call i32 @MULTIPLE_MOD_UP(i32 %515, i32 %516)
  store i32 %517, i32* %20, align 4
  %518 = load i32, i32* %19, align 4
  %519 = load i32, i32* @HB_MIN_WIDTH, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %523

521:                                              ; preds = %505
  %522 = load i32, i32* @HB_MIN_WIDTH, align 4
  store i32 %522, i32* %19, align 4
  br label %523

523:                                              ; preds = %521, %505
  %524 = load i32, i32* %20, align 4
  %525 = load i32, i32* @HB_MIN_HEIGHT, align 4
  %526 = icmp slt i32 %524, %525
  br i1 %526, label %527, label %529

527:                                              ; preds = %523
  %528 = load i32, i32* @HB_MIN_HEIGHT, align 4
  store i32 %528, i32* %20, align 4
  br label %529

529:                                              ; preds = %527, %523
  %530 = load i32, i32* %19, align 4
  %531 = load i32, i32* %21, align 4
  %532 = icmp sgt i32 %530, %531
  br i1 %532, label %533, label %535

533:                                              ; preds = %529
  %534 = load i32, i32* %21, align 4
  store i32 %534, i32* %19, align 4
  br label %535

535:                                              ; preds = %533, %529
  %536 = load i32, i32* %20, align 4
  %537 = load i32, i32* %22, align 4
  %538 = icmp sgt i32 %536, %537
  br i1 %538, label %539, label %541

539:                                              ; preds = %535
  %540 = load i32, i32* %22, align 4
  store i32 %540, i32* %20, align 4
  br label %541

541:                                              ; preds = %539, %535
  %542 = load i32, i32* %9, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %557

544:                                              ; preds = %541
  %545 = load i32, i32* %20, align 4
  %546 = load i32, i32* %11, align 4
  %547 = mul nsw i32 %545, %546
  %548 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = mul nsw i32 %547, %549
  store i32 %550, i32* %15, align 4
  %551 = load i32, i32* %19, align 4
  %552 = load i32, i32* %12, align 4
  %553 = mul nsw i32 %551, %552
  %554 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %555 = load i32, i32* %554, align 4
  %556 = mul nsw i32 %553, %555
  store i32 %556, i32* %16, align 4
  br label %557

557:                                              ; preds = %544, %541
  br label %608

558:                                              ; preds = %246
  br label %559

559:                                              ; preds = %246, %558
  %560 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %561 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %560, i32 0, i32 6
  %562 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* %14, align 4
  %565 = call i32 @MULTIPLE_MOD_UP(i32 %563, i32 %564)
  store i32 %565, i32* %19, align 4
  %566 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 6
  %568 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* %14, align 4
  %571 = call i32 @MULTIPLE_MOD_UP(i32 %569, i32 %570)
  store i32 %571, i32* %20, align 4
  %572 = load i32, i32* %19, align 4
  %573 = load i32, i32* @HB_MIN_WIDTH, align 4
  %574 = icmp slt i32 %572, %573
  br i1 %574, label %575, label %577

575:                                              ; preds = %559
  %576 = load i32, i32* @HB_MIN_WIDTH, align 4
  store i32 %576, i32* %19, align 4
  br label %577

577:                                              ; preds = %575, %559
  %578 = load i32, i32* %20, align 4
  %579 = load i32, i32* @HB_MIN_HEIGHT, align 4
  %580 = icmp slt i32 %578, %579
  br i1 %580, label %581, label %583

581:                                              ; preds = %577
  %582 = load i32, i32* @HB_MIN_HEIGHT, align 4
  store i32 %582, i32* %20, align 4
  br label %583

583:                                              ; preds = %581, %577
  %584 = load i32, i32* %19, align 4
  %585 = load i32, i32* %21, align 4
  %586 = icmp sgt i32 %584, %585
  br i1 %586, label %587, label %589

587:                                              ; preds = %583
  %588 = load i32, i32* %21, align 4
  store i32 %588, i32* %19, align 4
  br label %589

589:                                              ; preds = %587, %583
  %590 = load i32, i32* %20, align 4
  %591 = load i32, i32* %22, align 4
  %592 = icmp sgt i32 %590, %591
  br i1 %592, label %593, label %595

593:                                              ; preds = %589
  %594 = load i32, i32* %22, align 4
  store i32 %594, i32* %20, align 4
  br label %595

595:                                              ; preds = %593, %589
  %596 = load i32, i32* %20, align 4
  %597 = load i32, i32* %11, align 4
  %598 = mul nsw i32 %596, %597
  %599 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %600 = load i32, i32* %599, align 4
  %601 = mul nsw i32 %598, %600
  store i32 %601, i32* %15, align 4
  %602 = load i32, i32* %19, align 4
  %603 = load i32, i32* %12, align 4
  %604 = mul nsw i32 %602, %603
  %605 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %606 = load i32, i32* %605, align 4
  %607 = mul nsw i32 %604, %606
  store i32 %607, i32* %16, align 4
  br label %608

608:                                              ; preds = %595, %557, %492, %386, %385
  %609 = load i32, i32* %19, align 4
  %610 = load i32, i32* @HB_MIN_WIDTH, align 4
  %611 = icmp slt i32 %609, %610
  br i1 %611, label %624, label %612

612:                                              ; preds = %608
  %613 = load i32, i32* %20, align 4
  %614 = load i32, i32* @HB_MIN_HEIGHT, align 4
  %615 = icmp slt i32 %613, %614
  br i1 %615, label %624, label %616

616:                                              ; preds = %612
  %617 = load i32, i32* %19, align 4
  %618 = load i32, i32* %21, align 4
  %619 = icmp sgt i32 %617, %618
  br i1 %619, label %624, label %620

620:                                              ; preds = %616
  %621 = load i32, i32* %20, align 4
  %622 = load i32, i32* %22, align 4
  %623 = icmp sgt i32 %621, %622
  br i1 %623, label %624, label %670

624:                                              ; preds = %620, %616, %612, %608
  %625 = load i32, i32* %19, align 4
  %626 = load i32, i32* @HB_MIN_WIDTH, align 4
  %627 = icmp slt i32 %625, %626
  br i1 %627, label %628, label %630

628:                                              ; preds = %624
  %629 = load i32, i32* @HB_MIN_WIDTH, align 4
  store i32 %629, i32* %19, align 4
  br label %630

630:                                              ; preds = %628, %624
  %631 = load i32, i32* %20, align 4
  %632 = load i32, i32* @HB_MIN_HEIGHT, align 4
  %633 = icmp slt i32 %631, %632
  br i1 %633, label %634, label %636

634:                                              ; preds = %630
  %635 = load i32, i32* @HB_MIN_HEIGHT, align 4
  store i32 %635, i32* %20, align 4
  br label %636

636:                                              ; preds = %634, %630
  %637 = load i32, i32* %19, align 4
  %638 = load i32, i32* %21, align 4
  %639 = icmp sgt i32 %637, %638
  br i1 %639, label %640, label %642

640:                                              ; preds = %636
  %641 = load i32, i32* %21, align 4
  store i32 %641, i32* %19, align 4
  br label %642

642:                                              ; preds = %640, %636
  %643 = load i32, i32* %20, align 4
  %644 = load i32, i32* %22, align 4
  %645 = icmp sgt i32 %643, %644
  br i1 %645, label %646, label %648

646:                                              ; preds = %642
  %647 = load i32, i32* %22, align 4
  store i32 %647, i32* %20, align 4
  br label %648

648:                                              ; preds = %646, %642
  %649 = load i32, i32* %9, align 4
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %669

651:                                              ; preds = %648
  %652 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %653 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %652, i32 0, i32 5
  %654 = load i32, i32* %653, align 8
  %655 = icmp ne i32 %654, 129
  br i1 %655, label %656, label %669

656:                                              ; preds = %651
  %657 = load i32, i32* %20, align 4
  %658 = load i32, i32* %11, align 4
  %659 = mul nsw i32 %657, %658
  %660 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %661 = load i32, i32* %660, align 4
  %662 = mul nsw i32 %659, %661
  store i32 %662, i32* %15, align 4
  %663 = load i32, i32* %19, align 4
  %664 = load i32, i32* %12, align 4
  %665 = mul nsw i32 %663, %664
  %666 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %667 = load i32, i32* %666, align 4
  %668 = mul nsw i32 %665, %667
  store i32 %668, i32* %16, align 4
  br label %669

669:                                              ; preds = %656, %651, %648
  br label %670

670:                                              ; preds = %669, %620
  %671 = load i32, i32* %19, align 4
  %672 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %673 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %672, i32 0, i32 0
  store i32 %671, i32* %673, align 4
  %674 = load i32, i32* %20, align 4
  %675 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %676 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %675, i32 0, i32 1
  store i32 %674, i32* %676, align 4
  %677 = load i32, i32* %15, align 4
  %678 = load i32, i32* %16, align 4
  %679 = call i32 @hb_limit_rational64(i32* %15, i32* %16, i32 %677, i32 %678, i32 65535)
  %680 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %681 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %682 = load i32, i32* %15, align 4
  %683 = load i32, i32* %16, align 4
  %684 = call i32 @hb_reduce(i32* %680, i32* %681, i32 %682, i32 %683)
  %685 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %686 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %685, i32 0, i32 5
  %687 = load i32, i32* %686, align 8
  %688 = icmp eq i32 %687, 131
  br i1 %688, label %689, label %721

689:                                              ; preds = %670
  %690 = load i32, i32* %9, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %721, label %692

692:                                              ; preds = %689
  %693 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %694 = load i32, i32* %693, align 4
  %695 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %696 = load i32, i32* %695, align 4
  %697 = icmp eq i32 %694, %696
  br i1 %697, label %698, label %721

698:                                              ; preds = %692
  %699 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %700 = load i32, i32* %699, align 4
  %701 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %702 = load i32, i32* %701, align 4
  %703 = icmp eq i32 %700, %702
  br i1 %703, label %704, label %721

704:                                              ; preds = %698
  %705 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %706 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %705, i32 0, i32 6
  %707 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %706, i32 0, i32 2
  %708 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 4
  %710 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %711 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %710, i32 0, i32 2
  %712 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %711, i32 0, i32 0
  store i32 %709, i32* %712, align 4
  %713 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %714 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %713, i32 0, i32 6
  %715 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %714, i32 0, i32 2
  %716 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %715, i32 0, i32 1
  %717 = load i32, i32* %716, align 4
  %718 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %719 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %718, i32 0, i32 2
  %720 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %719, i32 0, i32 1
  store i32 %717, i32* %720, align 4
  br label %731

721:                                              ; preds = %698, %692, %689, %670
  %722 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %723 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %722, i32 0, i32 2
  %724 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %723, i32 0, i32 0
  %725 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %726 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %725, i32 0, i32 2
  %727 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %726, i32 0, i32 1
  %728 = load i32, i32* %15, align 4
  %729 = load i32, i32* %16, align 4
  %730 = call i32 @hb_reduce(i32* %724, i32* %727, i32 %728, i32 %729)
  br label %731

731:                                              ; preds = %721, %704
  ret void
}

declare dso_local i32 @EVEN(i64) #1

declare dso_local i32 @hb_reduce(i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MULTIPLE_MOD_DOWN(i64, i32) #1

declare dso_local i32 @MULTIPLE_MOD_UP(i32, i32) #1

declare dso_local i32 @MULTIPLE_MOD(i32, i32) #1

declare dso_local i32 @hb_limit_rational64(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
