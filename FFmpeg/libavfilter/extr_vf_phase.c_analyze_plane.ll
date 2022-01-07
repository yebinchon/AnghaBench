; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_phase.c_analyze_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_phase.c_analyze_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32**, i64, i64 }

@AUTO = common dso_local global i32 0, align 4
@TOP_FIRST = common dso_local global i32 0, align 4
@BOTTOM_FIRST = common dso_local global i32 0, align 4
@PROGRESSIVE = common dso_local global i32 0, align 4
@AUTO_ANALYZE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mode=%c tdiff=%f bdiff=%f pdiff=%f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_4__*, %struct.TYPE_4__*)* @analyze_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyze_plane(i8* %0, i32 %1, %struct.TYPE_4__* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @AUTO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @TOP_FIRST, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @BOTTOM_FIRST, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  br label %47

45:                                               ; preds = %29
  %46 = load i32, i32* @PROGRESSIVE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %6, align 4
  br label %69

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AUTO_ANALYZE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 128, i32 130
  br label %66

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i32 [ %64, %58 ], [ 129, %65 ]
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %49
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @BOTTOM_FIRST, align 4
  %72 = icmp ule i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store double 6.553600e+04, double* %10, align 8
  store double 6.553600e+04, double* %11, align 8
  store double 6.553600e+04, double* %9, align 8
  br label %475

74:                                               ; preds = %69
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %14, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %15, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %16, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %17, align 4
  store i32 0, i32* %22, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sub nsw i32 %102, 2
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  store i32* %107, i32** %25, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %14, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %15, align 8
  br label %116

116:                                              ; preds = %394, %74
  %117 = load i32*, i32** %14, align 8
  %118 = load i32*, i32** %25, align 8
  %119 = icmp ult i32* %117, %118
  br i1 %119, label %120, label %421

120:                                              ; preds = %116
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %121 = load i32, i32* %6, align 4
  switch i32 %121, label %392 [
    i32 128, label %122
    i32 130, label %186
    i32 131, label %250
    i32 129, label %314
  ]

122:                                              ; preds = %120
  %123 = load i32, i32* %22, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %122
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32* %129, i32** %24, align 8
  br label %130

130:                                              ; preds = %149, %125
  %131 = load i32*, i32** %14, align 8
  %132 = load i32*, i32** %24, align 8
  %133 = icmp ult i32* %131, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %130
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @DIFF(i32* %135, i32 %136, i32* %137, i32 %138)
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %20, align 4
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @DIFF(i32* %142, i32 %143, i32* %144, i32 %145)
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %19, align 4
  br label %149

149:                                              ; preds = %134
  %150 = load i32*, i32** %14, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %14, align 8
  %152 = load i32*, i32** %15, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %15, align 8
  br label %130

154:                                              ; preds = %130
  br label %185

155:                                              ; preds = %122
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32* %159, i32** %24, align 8
  br label %160

160:                                              ; preds = %179, %155
  %161 = load i32*, i32** %14, align 8
  %162 = load i32*, i32** %24, align 8
  %163 = icmp ult i32* %161, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %160
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i32*, i32** %14, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @DIFF(i32* %165, i32 %166, i32* %167, i32 %168)
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %20, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @DIFF(i32* %172, i32 %173, i32* %174, i32 %175)
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %19, align 4
  br label %179

179:                                              ; preds = %164
  %180 = load i32*, i32** %14, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %14, align 8
  %182 = load i32*, i32** %15, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %15, align 8
  br label %160

184:                                              ; preds = %160
  br label %185

185:                                              ; preds = %184, %154
  br label %394

186:                                              ; preds = %120
  %187 = load i32, i32* %22, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %219

189:                                              ; preds = %186
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32* %193, i32** %24, align 8
  br label %194

194:                                              ; preds = %213, %189
  %195 = load i32*, i32** %14, align 8
  %196 = load i32*, i32** %24, align 8
  %197 = icmp ult i32* %195, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %194
  %199 = load i32*, i32** %14, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load i32*, i32** %14, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @DIFF(i32* %199, i32 %200, i32* %201, i32 %202)
  %204 = load i32, i32* %20, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %20, align 4
  %206 = load i32*, i32** %15, align 8
  %207 = load i32, i32* %13, align 4
  %208 = load i32*, i32** %14, align 8
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @DIFF(i32* %206, i32 %207, i32* %208, i32 %209)
  %211 = load i32, i32* %18, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %18, align 4
  br label %213

213:                                              ; preds = %198
  %214 = load i32*, i32** %14, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %14, align 8
  %216 = load i32*, i32** %15, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %15, align 8
  br label %194

218:                                              ; preds = %194
  br label %249

219:                                              ; preds = %186
  %220 = load i32*, i32** %14, align 8
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32* %223, i32** %24, align 8
  br label %224

224:                                              ; preds = %243, %219
  %225 = load i32*, i32** %14, align 8
  %226 = load i32*, i32** %24, align 8
  %227 = icmp ult i32* %225, %226
  br i1 %227, label %228, label %248

228:                                              ; preds = %224
  %229 = load i32*, i32** %14, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load i32*, i32** %14, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @DIFF(i32* %229, i32 %230, i32* %231, i32 %232)
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %20, align 4
  %236 = load i32*, i32** %14, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load i32*, i32** %15, align 8
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @DIFF(i32* %236, i32 %237, i32* %238, i32 %239)
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %18, align 4
  br label %243

243:                                              ; preds = %228
  %244 = load i32*, i32** %14, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %14, align 8
  %246 = load i32*, i32** %15, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %15, align 8
  br label %224

248:                                              ; preds = %224
  br label %249

249:                                              ; preds = %248, %218
  br label %394

250:                                              ; preds = %120
  %251 = load i32, i32* %22, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %283

253:                                              ; preds = %250
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32* %257, i32** %24, align 8
  br label %258

258:                                              ; preds = %277, %253
  %259 = load i32*, i32** %14, align 8
  %260 = load i32*, i32** %24, align 8
  %261 = icmp ult i32* %259, %260
  br i1 %261, label %262, label %282

262:                                              ; preds = %258
  %263 = load i32*, i32** %14, align 8
  %264 = load i32, i32* %12, align 4
  %265 = load i32*, i32** %15, align 8
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @DIFF(i32* %263, i32 %264, i32* %265, i32 %266)
  %268 = load i32, i32* %19, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %19, align 4
  %270 = load i32*, i32** %15, align 8
  %271 = load i32, i32* %13, align 4
  %272 = load i32*, i32** %14, align 8
  %273 = load i32, i32* %12, align 4
  %274 = call i32 @DIFF(i32* %270, i32 %271, i32* %272, i32 %273)
  %275 = load i32, i32* %18, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %18, align 4
  br label %277

277:                                              ; preds = %262
  %278 = load i32*, i32** %14, align 8
  %279 = getelementptr inbounds i32, i32* %278, i32 1
  store i32* %279, i32** %14, align 8
  %280 = load i32*, i32** %15, align 8
  %281 = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %281, i32** %15, align 8
  br label %258

282:                                              ; preds = %258
  br label %313

283:                                              ; preds = %250
  %284 = load i32*, i32** %14, align 8
  %285 = load i32, i32* %17, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  store i32* %287, i32** %24, align 8
  br label %288

288:                                              ; preds = %307, %283
  %289 = load i32*, i32** %14, align 8
  %290 = load i32*, i32** %24, align 8
  %291 = icmp ult i32* %289, %290
  br i1 %291, label %292, label %312

292:                                              ; preds = %288
  %293 = load i32*, i32** %14, align 8
  %294 = load i32, i32* %12, align 4
  %295 = load i32*, i32** %15, align 8
  %296 = load i32, i32* %13, align 4
  %297 = call i32 @DIFF(i32* %293, i32 %294, i32* %295, i32 %296)
  %298 = load i32, i32* %18, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %18, align 4
  %300 = load i32*, i32** %15, align 8
  %301 = load i32, i32* %13, align 4
  %302 = load i32*, i32** %14, align 8
  %303 = load i32, i32* %12, align 4
  %304 = call i32 @DIFF(i32* %300, i32 %301, i32* %302, i32 %303)
  %305 = load i32, i32* %19, align 4
  %306 = add nsw i32 %305, %304
  store i32 %306, i32* %19, align 4
  br label %307

307:                                              ; preds = %292
  %308 = load i32*, i32** %14, align 8
  %309 = getelementptr inbounds i32, i32* %308, i32 1
  store i32* %309, i32** %14, align 8
  %310 = load i32*, i32** %15, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %311, i32** %15, align 8
  br label %288

312:                                              ; preds = %288
  br label %313

313:                                              ; preds = %312, %282
  br label %394

314:                                              ; preds = %120
  %315 = load i32, i32* %22, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %354

317:                                              ; preds = %314
  %318 = load i32*, i32** %14, align 8
  %319 = load i32, i32* %17, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32* %321, i32** %24, align 8
  br label %322

322:                                              ; preds = %348, %317
  %323 = load i32*, i32** %14, align 8
  %324 = load i32*, i32** %24, align 8
  %325 = icmp ult i32* %323, %324
  br i1 %325, label %326, label %353

326:                                              ; preds = %322
  %327 = load i32*, i32** %14, align 8
  %328 = load i32, i32* %12, align 4
  %329 = load i32*, i32** %14, align 8
  %330 = load i32, i32* %12, align 4
  %331 = call i32 @DIFF(i32* %327, i32 %328, i32* %329, i32 %330)
  %332 = load i32, i32* %20, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %20, align 4
  %334 = load i32*, i32** %14, align 8
  %335 = load i32, i32* %12, align 4
  %336 = load i32*, i32** %15, align 8
  %337 = load i32, i32* %13, align 4
  %338 = call i32 @DIFF(i32* %334, i32 %335, i32* %336, i32 %337)
  %339 = load i32, i32* %19, align 4
  %340 = add nsw i32 %339, %338
  store i32 %340, i32* %19, align 4
  %341 = load i32*, i32** %15, align 8
  %342 = load i32, i32* %13, align 4
  %343 = load i32*, i32** %14, align 8
  %344 = load i32, i32* %12, align 4
  %345 = call i32 @DIFF(i32* %341, i32 %342, i32* %343, i32 %344)
  %346 = load i32, i32* %18, align 4
  %347 = add nsw i32 %346, %345
  store i32 %347, i32* %18, align 4
  br label %348

348:                                              ; preds = %326
  %349 = load i32*, i32** %14, align 8
  %350 = getelementptr inbounds i32, i32* %349, i32 1
  store i32* %350, i32** %14, align 8
  %351 = load i32*, i32** %15, align 8
  %352 = getelementptr inbounds i32, i32* %351, i32 1
  store i32* %352, i32** %15, align 8
  br label %322

353:                                              ; preds = %322
  br label %391

354:                                              ; preds = %314
  %355 = load i32*, i32** %14, align 8
  %356 = load i32, i32* %17, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  store i32* %358, i32** %24, align 8
  br label %359

359:                                              ; preds = %385, %354
  %360 = load i32*, i32** %14, align 8
  %361 = load i32*, i32** %24, align 8
  %362 = icmp ult i32* %360, %361
  br i1 %362, label %363, label %390

363:                                              ; preds = %359
  %364 = load i32*, i32** %14, align 8
  %365 = load i32, i32* %12, align 4
  %366 = load i32*, i32** %14, align 8
  %367 = load i32, i32* %12, align 4
  %368 = call i32 @DIFF(i32* %364, i32 %365, i32* %366, i32 %367)
  %369 = load i32, i32* %20, align 4
  %370 = add nsw i32 %369, %368
  store i32 %370, i32* %20, align 4
  %371 = load i32*, i32** %14, align 8
  %372 = load i32, i32* %12, align 4
  %373 = load i32*, i32** %15, align 8
  %374 = load i32, i32* %13, align 4
  %375 = call i32 @DIFF(i32* %371, i32 %372, i32* %373, i32 %374)
  %376 = load i32, i32* %18, align 4
  %377 = add nsw i32 %376, %375
  store i32 %377, i32* %18, align 4
  %378 = load i32*, i32** %15, align 8
  %379 = load i32, i32* %13, align 4
  %380 = load i32*, i32** %14, align 8
  %381 = load i32, i32* %12, align 4
  %382 = call i32 @DIFF(i32* %378, i32 %379, i32* %380, i32 %381)
  %383 = load i32, i32* %19, align 4
  %384 = add nsw i32 %383, %382
  store i32 %384, i32* %19, align 4
  br label %385

385:                                              ; preds = %363
  %386 = load i32*, i32** %14, align 8
  %387 = getelementptr inbounds i32, i32* %386, i32 1
  store i32* %387, i32** %14, align 8
  %388 = load i32*, i32** %15, align 8
  %389 = getelementptr inbounds i32, i32* %388, i32 1
  store i32* %389, i32** %15, align 8
  br label %359

390:                                              ; preds = %359
  br label %391

391:                                              ; preds = %390, %353
  br label %394

392:                                              ; preds = %120
  %393 = call i32 @av_assert0(i32 0)
  br label %394

394:                                              ; preds = %392, %391, %313, %249, %185
  %395 = load i32, i32* %20, align 4
  %396 = sitofp i32 %395 to double
  %397 = load double, double* %11, align 8
  %398 = fadd double %397, %396
  store double %398, double* %11, align 8
  %399 = load i32, i32* %19, align 4
  %400 = sitofp i32 %399 to double
  %401 = load double, double* %10, align 8
  %402 = fadd double %401, %400
  store double %402, double* %10, align 8
  %403 = load i32, i32* %18, align 4
  %404 = sitofp i32 %403 to double
  %405 = load double, double* %9, align 8
  %406 = fadd double %405, %404
  store double %406, double* %9, align 8
  %407 = load i32, i32* %12, align 4
  %408 = load i32, i32* %17, align 4
  %409 = sub nsw i32 %407, %408
  %410 = load i32*, i32** %14, align 8
  %411 = sext i32 %409 to i64
  %412 = getelementptr inbounds i32, i32* %410, i64 %411
  store i32* %412, i32** %14, align 8
  %413 = load i32, i32* %13, align 4
  %414 = load i32, i32* %17, align 4
  %415 = sub nsw i32 %413, %414
  %416 = load i32*, i32** %15, align 8
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %416, i64 %417
  store i32* %418, i32** %15, align 8
  %419 = load i32, i32* %22, align 4
  %420 = xor i32 %419, 1
  store i32 %420, i32* %22, align 4
  br label %116

421:                                              ; preds = %116
  %422 = load i32, i32* %17, align 4
  %423 = load i32, i32* %16, align 4
  %424 = sub nsw i32 %423, 3
  %425 = mul nsw i32 %422, %424
  %426 = sitofp i32 %425 to double
  %427 = fdiv double 1.000000e+00, %426
  %428 = fdiv double %427, 2.500000e+01
  store double %428, double* %21, align 8
  %429 = load double, double* %21, align 8
  %430 = load double, double* %11, align 8
  %431 = fmul double %430, %429
  store double %431, double* %11, align 8
  %432 = load double, double* %21, align 8
  %433 = load double, double* %10, align 8
  %434 = fmul double %433, %432
  store double %434, double* %10, align 8
  %435 = load double, double* %21, align 8
  %436 = load double, double* %9, align 8
  %437 = fmul double %436, %435
  store double %437, double* %9, align 8
  %438 = load i32, i32* %6, align 4
  %439 = icmp eq i32 %438, 128
  br i1 %439, label %440, label %441

440:                                              ; preds = %421
  store double 6.553600e+04, double* %9, align 8
  br label %451

441:                                              ; preds = %421
  %442 = load i32, i32* %6, align 4
  %443 = icmp eq i32 %442, 130
  br i1 %443, label %444, label %445

444:                                              ; preds = %441
  store double 6.553600e+04, double* %10, align 8
  br label %450

445:                                              ; preds = %441
  %446 = load i32, i32* %6, align 4
  %447 = icmp eq i32 %446, 131
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  store double 6.553600e+04, double* %11, align 8
  br label %449

449:                                              ; preds = %448, %445
  br label %450

450:                                              ; preds = %449, %444
  br label %451

451:                                              ; preds = %450, %440
  %452 = load double, double* %9, align 8
  %453 = load double, double* %11, align 8
  %454 = fcmp olt double %452, %453
  br i1 %454, label %455, label %461

455:                                              ; preds = %451
  %456 = load double, double* %9, align 8
  %457 = load double, double* %10, align 8
  %458 = fcmp olt double %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %455
  %460 = load i32, i32* @BOTTOM_FIRST, align 4
  store i32 %460, i32* %6, align 4
  br label %474

461:                                              ; preds = %455, %451
  %462 = load double, double* %10, align 8
  %463 = load double, double* %11, align 8
  %464 = fcmp olt double %462, %463
  br i1 %464, label %465, label %471

465:                                              ; preds = %461
  %466 = load double, double* %10, align 8
  %467 = load double, double* %9, align 8
  %468 = fcmp olt double %466, %467
  br i1 %468, label %469, label %471

469:                                              ; preds = %465
  %470 = load i32, i32* @TOP_FIRST, align 4
  store i32 %470, i32* %6, align 4
  br label %473

471:                                              ; preds = %465, %461
  %472 = load i32, i32* @PROGRESSIVE, align 4
  store i32 %472, i32* %6, align 4
  br label %473

473:                                              ; preds = %471, %469
  br label %474

474:                                              ; preds = %473, %459
  br label %475

475:                                              ; preds = %474, %73
  %476 = load i8*, i8** %5, align 8
  %477 = load i32, i32* @AV_LOG_DEBUG, align 4
  %478 = load i32, i32* %6, align 4
  %479 = load i32, i32* @BOTTOM_FIRST, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %475
  br label %488

482:                                              ; preds = %475
  %483 = load i32, i32* %6, align 4
  %484 = load i32, i32* @TOP_FIRST, align 4
  %485 = icmp eq i32 %483, %484
  %486 = zext i1 %485 to i64
  %487 = select i1 %485, i32 116, i32 112
  br label %488

488:                                              ; preds = %482, %481
  %489 = phi i32 [ 98, %481 ], [ %487, %482 ]
  %490 = trunc i32 %489 to i8
  %491 = load double, double* %10, align 8
  %492 = load double, double* %9, align 8
  %493 = load double, double* %11, align 8
  %494 = call i32 @av_log(i8* %476, i32 %477, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %490, double %491, double %492, double %493)
  %495 = load i32, i32* %6, align 4
  ret i32 %495
}

declare dso_local i32 @DIFF(i32*, i32, i32*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8 signext, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
