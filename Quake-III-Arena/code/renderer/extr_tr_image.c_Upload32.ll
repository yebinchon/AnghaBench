; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_Upload32.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_Upload32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32* (i32)*, i32 (i32*)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@GL_RGB = common dso_local global i32 0, align 4
@r_roundImagesDown = common dso_local global %struct.TYPE_9__* null, align 8
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@r_picmip = common dso_local global %struct.TYPE_10__* null, align 8
@glConfig = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TC_S3TC = common dso_local global i64 0, align 8
@GL_RGB4_S3TC = common dso_local global i32 0, align 4
@r_texturebits = common dso_local global %struct.TYPE_8__* null, align 8
@GL_RGB5 = common dso_local global i32 0, align 4
@GL_RGB8 = common dso_local global i32 0, align 4
@GL_RGBA4 = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@r_colorMipLevels = common dso_local global %struct.TYPE_11__* null, align 8
@mipBlendColors = common dso_local global i32* null, align 8
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@gl_filter_min = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@gl_filter_max = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i64, i64, i64, i32*, i32*, i32*)* @Upload32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Upload32(i32* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float*, align 8
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %32 = load i32, i32* @GL_RGB, align 4
  store i32 %32, i32* %27, align 4
  store float 0.000000e+00, float* %28, align 4
  store float 0.000000e+00, float* %29, align 4
  store float 0.000000e+00, float* %30, align 4
  store i32 1, i32* %22, align 4
  br label %33

33:                                               ; preds = %38, %9
  %34 = load i32, i32* %22, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %22, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %22, align 4
  br label %33

41:                                               ; preds = %33
  store i32 1, i32* %23, align 4
  br label %42

42:                                               ; preds = %47, %41
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %23, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %23, align 4
  br label %42

50:                                               ; preds = %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_roundImagesDown, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %22, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %22, align 4
  br label %62

62:                                               ; preds = %59, %55, %50
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_roundImagesDown, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %23, align 4
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %23, align 4
  br label %74

74:                                               ; preds = %71, %67, %62
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %78, %74
  %83 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %23, align 4
  %86 = mul nsw i32 %84, %85
  %87 = mul nsw i32 %86, 4
  %88 = call i32* %83(i32 %87)
  store i32* %88, i32** %21, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %21, align 8
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %23, align 4
  %95 = call i32 @ResampleTexture(i32* %89, i32 %90, i32 %91, i32* %92, i32 %93, i32 %94)
  %96 = load i32*, i32** %21, align 8
  store i32* %96, i32** %10, align 8
  %97 = load i32, i32* %22, align 4
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %23, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %82, %78
  %100 = load i64, i64* %14, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_picmip, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %22, align 4
  %107 = ashr i32 %106, %105
  store i32 %107, i32* %22, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_picmip, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %23, align 4
  %112 = ashr i32 %111, %110
  store i32 %112, i32* %23, align 4
  br label %113

113:                                              ; preds = %102, %99
  %114 = load i32, i32* %22, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 1, i32* %22, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %23, align 4
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 1, i32* %23, align 4
  br label %121

121:                                              ; preds = %120, %117
  br label %122

122:                                              ; preds = %132, %121
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %129 = icmp sgt i32 %127, %128
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ true, %122 ], [ %129, %126 ]
  br i1 %131, label %132, label %137

132:                                              ; preds = %130
  %133 = load i32, i32* %22, align 4
  %134 = ashr i32 %133, 1
  store i32 %134, i32* %22, align 4
  %135 = load i32, i32* %23, align 4
  %136 = ashr i32 %135, 1
  store i32 %136, i32* %23, align 4
  br label %122

137:                                              ; preds = %130
  %138 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %139 = load i32, i32* %22, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 4, %140
  %142 = load i32, i32* %23, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %141, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32* %138(i32 %145)
  store i32* %146, i32** %20, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = mul nsw i32 %147, %148
  store i32 %149, i32* %25, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = bitcast i32* %150 to float*
  store float* %151, float** %26, align 8
  store i32 3, i32* %19, align 4
  %152 = load i64, i64* %15, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %276, label %154

154:                                              ; preds = %137
  store i32 0, i32* %24, align 4
  br label %155

155:                                              ; preds = %224, %154
  %156 = load i32, i32* %24, align 4
  %157 = load i32, i32* %25, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %227

159:                                              ; preds = %155
  %160 = load float*, float** %26, align 8
  %161 = load i32, i32* %24, align 4
  %162 = mul nsw i32 %161, 4
  %163 = add nsw i32 %162, 0
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %160, i64 %164
  %166 = load float, float* %165, align 4
  %167 = load float, float* %28, align 4
  %168 = fcmp ogt float %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %159
  %170 = load float*, float** %26, align 8
  %171 = load i32, i32* %24, align 4
  %172 = mul nsw i32 %171, 4
  %173 = add nsw i32 %172, 0
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %170, i64 %174
  %176 = load float, float* %175, align 4
  store float %176, float* %28, align 4
  br label %177

177:                                              ; preds = %169, %159
  %178 = load float*, float** %26, align 8
  %179 = load i32, i32* %24, align 4
  %180 = mul nsw i32 %179, 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %178, i64 %182
  %184 = load float, float* %183, align 4
  %185 = load float, float* %29, align 4
  %186 = fcmp ogt float %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %177
  %188 = load float*, float** %26, align 8
  %189 = load i32, i32* %24, align 4
  %190 = mul nsw i32 %189, 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %188, i64 %192
  %194 = load float, float* %193, align 4
  store float %194, float* %29, align 4
  br label %195

195:                                              ; preds = %187, %177
  %196 = load float*, float** %26, align 8
  %197 = load i32, i32* %24, align 4
  %198 = mul nsw i32 %197, 4
  %199 = add nsw i32 %198, 2
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %196, i64 %200
  %202 = load float, float* %201, align 4
  %203 = load float, float* %30, align 4
  %204 = fcmp ogt float %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %195
  %206 = load float*, float** %26, align 8
  %207 = load i32, i32* %24, align 4
  %208 = mul nsw i32 %207, 4
  %209 = add nsw i32 %208, 2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %206, i64 %210
  %212 = load float, float* %211, align 4
  store float %212, float* %30, align 4
  br label %213

213:                                              ; preds = %205, %195
  %214 = load float*, float** %26, align 8
  %215 = load i32, i32* %24, align 4
  %216 = mul nsw i32 %215, 4
  %217 = add nsw i32 %216, 3
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %214, i64 %218
  %220 = load float, float* %219, align 4
  %221 = fcmp une float %220, 2.550000e+02
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  store i32 4, i32* %19, align 4
  br label %227

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %24, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %24, align 4
  br label %155

227:                                              ; preds = %222, %155
  %228 = load i32, i32* %19, align 4
  %229 = icmp eq i32 %228, 3
  br i1 %229, label %230, label %254

230:                                              ; preds = %227
  %231 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 1), align 8
  %232 = load i64, i64* @TC_S3TC, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @GL_RGB4_S3TC, align 4
  store i32 %235, i32* %27, align 4
  br label %253

236:                                              ; preds = %230
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_texturebits, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 16
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i32, i32* @GL_RGB5, align 4
  store i32 %242, i32* %27, align 4
  br label %252

243:                                              ; preds = %236
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_texturebits, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 32
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i32, i32* @GL_RGB8, align 4
  store i32 %249, i32* %27, align 4
  br label %251

250:                                              ; preds = %243
  store i32 3, i32* %27, align 4
  br label %251

251:                                              ; preds = %250, %248
  br label %252

252:                                              ; preds = %251, %241
  br label %253

253:                                              ; preds = %252, %234
  br label %275

254:                                              ; preds = %227
  %255 = load i32, i32* %19, align 4
  %256 = icmp eq i32 %255, 4
  br i1 %256, label %257, label %274

257:                                              ; preds = %254
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_texturebits, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 16
  br i1 %261, label %262, label %264

262:                                              ; preds = %257
  %263 = load i32, i32* @GL_RGBA4, align 4
  store i32 %263, i32* %27, align 4
  br label %273

264:                                              ; preds = %257
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_texturebits, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 32
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = load i32, i32* @GL_RGBA8, align 4
  store i32 %270, i32* %27, align 4
  br label %272

271:                                              ; preds = %264
  store i32 4, i32* %27, align 4
  br label %272

272:                                              ; preds = %271, %269
  br label %273

273:                                              ; preds = %272, %262
  br label %274

274:                                              ; preds = %273, %254
  br label %275

275:                                              ; preds = %274, %253
  br label %277

276:                                              ; preds = %137
  store i32 3, i32* %27, align 4
  br label %277

277:                                              ; preds = %276, %275
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* %11, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %311

281:                                              ; preds = %277
  %282 = load i32, i32* %23, align 4
  %283 = load i32, i32* %12, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %311

285:                                              ; preds = %281
  %286 = load i64, i64* %13, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %303, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* @GL_TEXTURE_2D, align 4
  %290 = load i32, i32* %27, align 4
  %291 = load i32, i32* %22, align 4
  %292 = load i32, i32* %23, align 4
  %293 = load i32, i32* @GL_RGBA, align 4
  %294 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %295 = load i32*, i32** %10, align 8
  %296 = call i32 @qglTexImage2D(i32 %289, i32 0, i32 %290, i32 %291, i32 %292, i32 0, i32 %293, i32 %294, i32* %295)
  %297 = load i32, i32* %22, align 4
  %298 = load i32*, i32** %17, align 8
  store i32 %297, i32* %298, align 4
  %299 = load i32, i32* %23, align 4
  %300 = load i32*, i32** %18, align 8
  store i32 %299, i32* %300, align 4
  %301 = load i32, i32* %27, align 4
  %302 = load i32*, i32** %16, align 8
  store i32 %301, i32* %302, align 4
  br label %430

303:                                              ; preds = %285
  %304 = load i32*, i32** %20, align 8
  %305 = load i32*, i32** %10, align 8
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* %12, align 4
  %308 = mul nsw i32 %306, %307
  %309 = mul nsw i32 %308, 4
  %310 = call i32 @Com_Memcpy(i32* %304, i32* %305, i32 %309)
  br label %348

311:                                              ; preds = %281, %277
  br label %312

312:                                              ; preds = %339, %311
  %313 = load i32, i32* %11, align 4
  %314 = load i32, i32* %22, align 4
  %315 = icmp sgt i32 %313, %314
  br i1 %315, label %320, label %316

316:                                              ; preds = %312
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* %23, align 4
  %319 = icmp sgt i32 %317, %318
  br label %320

320:                                              ; preds = %316, %312
  %321 = phi i1 [ true, %312 ], [ %319, %316 ]
  br i1 %321, label %322, label %340

322:                                              ; preds = %320
  %323 = load i32*, i32** %10, align 8
  %324 = bitcast i32* %323 to float*
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* %12, align 4
  %327 = call i32 @R_MipMap(float* %324, i32 %325, i32 %326)
  %328 = load i32, i32* %11, align 4
  %329 = ashr i32 %328, 1
  store i32 %329, i32* %11, align 4
  %330 = load i32, i32* %12, align 4
  %331 = ashr i32 %330, 1
  store i32 %331, i32* %12, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp slt i32 %332, 1
  br i1 %333, label %334, label %335

334:                                              ; preds = %322
  store i32 1, i32* %11, align 4
  br label %335

335:                                              ; preds = %334, %322
  %336 = load i32, i32* %12, align 4
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  store i32 1, i32* %12, align 4
  br label %339

339:                                              ; preds = %338, %335
  br label %312

340:                                              ; preds = %320
  %341 = load i32*, i32** %20, align 8
  %342 = load i32*, i32** %10, align 8
  %343 = load i32, i32* %11, align 4
  %344 = load i32, i32* %12, align 4
  %345 = mul nsw i32 %343, %344
  %346 = mul nsw i32 %345, 4
  %347 = call i32 @Com_Memcpy(i32* %341, i32* %342, i32 %346)
  br label %348

348:                                              ; preds = %340, %303
  %349 = load i32*, i32** %20, align 8
  %350 = load i32, i32* %22, align 4
  %351 = load i32, i32* %23, align 4
  %352 = load i64, i64* %13, align 8
  %353 = icmp ne i64 %352, 0
  %354 = xor i1 %353, true
  %355 = zext i1 %354 to i32
  %356 = call i32 @R_LightScaleTexture(i32* %349, i32 %350, i32 %351, i32 %355)
  %357 = load i32, i32* %22, align 4
  %358 = load i32*, i32** %17, align 8
  store i32 %357, i32* %358, align 4
  %359 = load i32, i32* %23, align 4
  %360 = load i32*, i32** %18, align 8
  store i32 %359, i32* %360, align 4
  %361 = load i32, i32* %27, align 4
  %362 = load i32*, i32** %16, align 8
  store i32 %361, i32* %362, align 4
  %363 = load i32, i32* @GL_TEXTURE_2D, align 4
  %364 = load i32, i32* %27, align 4
  %365 = load i32, i32* %22, align 4
  %366 = load i32, i32* %23, align 4
  %367 = load i32, i32* @GL_RGBA, align 4
  %368 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %369 = load i32*, i32** %20, align 8
  %370 = call i32 @qglTexImage2D(i32 %363, i32 0, i32 %364, i32 %365, i32 %366, i32 0, i32 %367, i32 %368, i32* %369)
  %371 = load i64, i64* %13, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %429

373:                                              ; preds = %348
  store i32 0, i32* %31, align 4
  br label %374

374:                                              ; preds = %418, %373
  %375 = load i32, i32* %22, align 4
  %376 = icmp sgt i32 %375, 1
  br i1 %376, label %380, label %377

377:                                              ; preds = %374
  %378 = load i32, i32* %23, align 4
  %379 = icmp sgt i32 %378, 1
  br label %380

380:                                              ; preds = %377, %374
  %381 = phi i1 [ true, %374 ], [ %379, %377 ]
  br i1 %381, label %382, label %428

382:                                              ; preds = %380
  %383 = load i32*, i32** %20, align 8
  %384 = bitcast i32* %383 to float*
  %385 = load i32, i32* %22, align 4
  %386 = load i32, i32* %23, align 4
  %387 = call i32 @R_MipMap(float* %384, i32 %385, i32 %386)
  %388 = load i32, i32* %22, align 4
  %389 = ashr i32 %388, 1
  store i32 %389, i32* %22, align 4
  %390 = load i32, i32* %23, align 4
  %391 = ashr i32 %390, 1
  store i32 %391, i32* %23, align 4
  %392 = load i32, i32* %22, align 4
  %393 = icmp slt i32 %392, 1
  br i1 %393, label %394, label %395

394:                                              ; preds = %382
  store i32 1, i32* %22, align 4
  br label %395

395:                                              ; preds = %394, %382
  %396 = load i32, i32* %23, align 4
  %397 = icmp slt i32 %396, 1
  br i1 %397, label %398, label %399

398:                                              ; preds = %395
  store i32 1, i32* %23, align 4
  br label %399

399:                                              ; preds = %398, %395
  %400 = load i32, i32* %31, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %31, align 4
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_colorMipLevels, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %418

406:                                              ; preds = %399
  %407 = load i32*, i32** %20, align 8
  %408 = bitcast i32* %407 to float*
  %409 = load i32, i32* %22, align 4
  %410 = load i32, i32* %23, align 4
  %411 = mul nsw i32 %409, %410
  %412 = load i32*, i32** @mipBlendColors, align 8
  %413 = load i32, i32* %31, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @R_BlendOverTexture(float* %408, i32 %411, i32 %416)
  br label %418

418:                                              ; preds = %406, %399
  %419 = load i32, i32* @GL_TEXTURE_2D, align 4
  %420 = load i32, i32* %31, align 4
  %421 = load i32, i32* %27, align 4
  %422 = load i32, i32* %22, align 4
  %423 = load i32, i32* %23, align 4
  %424 = load i32, i32* @GL_RGBA, align 4
  %425 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %426 = load i32*, i32** %20, align 8
  %427 = call i32 @qglTexImage2D(i32 %419, i32 %420, i32 %421, i32 %422, i32 %423, i32 0, i32 %424, i32 %425, i32* %426)
  br label %374

428:                                              ; preds = %380
  br label %429

429:                                              ; preds = %428, %348
  br label %430

430:                                              ; preds = %429, %288
  %431 = load i64, i64* %13, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %442

433:                                              ; preds = %430
  %434 = load i32, i32* @GL_TEXTURE_2D, align 4
  %435 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %436 = load i32, i32* @gl_filter_min, align 4
  %437 = call i32 @qglTexParameterf(i32 %434, i32 %435, i32 %436)
  %438 = load i32, i32* @GL_TEXTURE_2D, align 4
  %439 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %440 = load i32, i32* @gl_filter_max, align 4
  %441 = call i32 @qglTexParameterf(i32 %438, i32 %439, i32 %440)
  br label %451

442:                                              ; preds = %430
  %443 = load i32, i32* @GL_TEXTURE_2D, align 4
  %444 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %445 = load i32, i32* @GL_LINEAR, align 4
  %446 = call i32 @qglTexParameterf(i32 %443, i32 %444, i32 %445)
  %447 = load i32, i32* @GL_TEXTURE_2D, align 4
  %448 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %449 = load i32, i32* @GL_LINEAR, align 4
  %450 = call i32 @qglTexParameterf(i32 %447, i32 %448, i32 %449)
  br label %451

451:                                              ; preds = %442, %433
  %452 = call i32 (...) @GL_CheckErrors()
  %453 = load i32*, i32** %20, align 8
  %454 = icmp ne i32* %453, null
  br i1 %454, label %455, label %459

455:                                              ; preds = %451
  %456 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 1), align 8
  %457 = load i32*, i32** %20, align 8
  %458 = call i32 %456(i32* %457)
  br label %459

459:                                              ; preds = %455, %451
  %460 = load i32*, i32** %21, align 8
  %461 = icmp ne i32* %460, null
  br i1 %461, label %462, label %466

462:                                              ; preds = %459
  %463 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 1), align 8
  %464 = load i32*, i32** %21, align 8
  %465 = call i32 %463(i32* %464)
  br label %466

466:                                              ; preds = %462, %459
  ret void
}

declare dso_local i32 @ResampleTexture(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @qglTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @Com_Memcpy(i32*, i32*, i32) #1

declare dso_local i32 @R_MipMap(float*, i32, i32) #1

declare dso_local i32 @R_LightScaleTexture(i32*, i32, i32, i32) #1

declare dso_local i32 @R_BlendOverTexture(float*, i32, i32) #1

declare dso_local i32 @qglTexParameterf(i32, i32, i32) #1

declare dso_local i32 @GL_CheckErrors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
