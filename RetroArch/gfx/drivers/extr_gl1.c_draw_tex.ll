; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_draw_tex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_draw_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }

@GL_RGB8 = common dso_local global i32 0, align 4
@GL_BGRA_EXT = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@__const.draw_tex.vertices = private unnamed_addr constant [12 x float] [float -1.000000e+00, float -1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], align 16
@__const.draw_tex.colors = private unnamed_addr constant [16 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_STENCIL_TEST = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_REPEAT = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, i64, i8*)* @draw_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_tex(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [12 x float], align 16
  %21 = alloca [16 x float], align 16
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca [8 x float], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %28 = load i32, i32* @GL_RGB8, align 4
  store i32 %28, i32* %17, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* @GL_BGRA_EXT, align 4
  br label %37

35:                                               ; preds = %7
  %36 = load i32, i32* @GL_RGBA, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  store i32 %39, i32* %19, align 4
  %40 = bitcast [12 x float]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %40, i8* align 16 bitcast ([12 x float]* @__const.draw_tex.vertices to i8*), i64 48, i1 false)
  %41 = bitcast [16 x float]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 16 bitcast ([16 x float]* @__const.draw_tex.colors to i8*), i64 64, i1 false)
  %42 = load i32, i32* %9, align 4
  %43 = sitofp i32 %42 to float
  %44 = fdiv float 1.000000e+00, %43
  %45 = load i32, i32* %11, align 4
  %46 = sitofp i32 %45 to float
  %47 = fmul float %44, %46
  store float %47, float* %22, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sitofp i32 %48 to float
  %50 = fdiv float 1.000000e+00, %49
  %51 = load i32, i32* %12, align 4
  %52 = sitofp i32 %51 to float
  %53 = fmul float %50, %52
  store float %53, float* %23, align 4
  %54 = bitcast [8 x float]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %54, i8 0, i64 32, i1 false)
  %55 = load float, float* %23, align 4
  %56 = getelementptr inbounds [8 x float], [8 x float]* %24, i64 0, i64 5
  store float %55, float* %56, align 4
  %57 = getelementptr inbounds [8 x float], [8 x float]* %24, i64 0, i64 1
  store float %55, float* %57, align 4
  %58 = load float, float* %22, align 4
  %59 = getelementptr inbounds [8 x float], [8 x float]* %24, i64 0, i64 6
  store float %58, float* %59, align 8
  %60 = getelementptr inbounds [8 x float], [8 x float]* %24, i64 0, i64 4
  store float %58, float* %60, align 16
  %61 = load i32, i32* @GL_DEPTH_TEST, align 4
  %62 = call i32 @glDisable(i32 %61)
  %63 = load i32, i32* @GL_CULL_FACE, align 4
  %64 = call i32 @glDisable(i32 %63)
  %65 = load i32, i32* @GL_STENCIL_TEST, align 4
  %66 = call i32 @glDisable(i32 %65)
  %67 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %68 = call i32 @glDisable(i32 %67)
  %69 = load i32, i32* @GL_TEXTURE_2D, align 4
  %70 = call i32 @glEnable(i32 %69)
  %71 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %72 = call i32 @glPixelStorei(i32 %71, i32 1)
  %73 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @glPixelStorei(i32 %73, i32 %74)
  %76 = load i32, i32* @GL_TEXTURE_2D, align 4
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @glBindTexture(i32 %76, i64 %77)
  %79 = load i8*, i8** %14, align 8
  %80 = bitcast i8* %79 to i32*
  store i32* %80, i32** %15, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %165, label %85

85:                                               ; preds = %37
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  %89 = mul nsw i32 %88, 4
  %90 = call i64 @malloc(i32 %89)
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %16, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %164

94:                                               ; preds = %85
  store i32 0, i32* %26, align 4
  br label %95

95:                                               ; preds = %159, %94
  %96 = load i32, i32* %26, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %162

99:                                               ; preds = %95
  store i32 0, i32* %25, align 4
  br label %100

100:                                              ; preds = %155, %99
  %101 = load i32, i32* %25, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %158

104:                                              ; preds = %100
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %25, align 4
  %109 = add nsw i32 %107, %108
  %110 = mul nsw i32 %109, 4
  store i32 %110, i32* %27, align 4
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* %27, align 4
  %113 = add nsw i32 %112, 0
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %16, align 8
  %118 = load i32, i32* %27, align 4
  %119 = add nsw i32 %118, 2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %116, i32* %121, align 4
  %122 = load i32*, i32** %15, align 8
  %123 = load i32, i32* %27, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %16, align 8
  %129 = load i32, i32* %27, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* %27, align 4
  %135 = add nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %16, align 8
  %140 = load i32, i32* %27, align 4
  %141 = add nsw i32 %140, 0
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %138, i32* %143, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %27, align 4
  %146 = add nsw i32 %145, 3
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %16, align 8
  %151 = load i32, i32* %27, align 4
  %152 = add nsw i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  br label %155

155:                                              ; preds = %104
  %156 = load i32, i32* %25, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %25, align 4
  br label %100

158:                                              ; preds = %100
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %26, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %26, align 4
  br label %95

162:                                              ; preds = %95
  %163 = load i32*, i32** %16, align 8
  store i32* %163, i32** %15, align 8
  br label %164

164:                                              ; preds = %162, %85
  br label %165

165:                                              ; preds = %164, %37
  %166 = load i32, i32* @GL_TEXTURE_2D, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = call i32 @glTexImage2D(i32 %166, i32 0, i32 %167, i32 %168, i32 %169, i32 0, i32 %170, i32 %171, i32* %172)
  %174 = load i32*, i32** %16, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %165
  %177 = load i32*, i32** %16, align 8
  %178 = call i32 @free(i32* %177)
  br label %179

179:                                              ; preds = %176, %165
  %180 = load i64, i64* %13, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %180, %183
  br i1 %184, label %185, label %212

185:                                              ; preds = %179
  %186 = load i32, i32* @GL_TEXTURE_2D, align 4
  %187 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i32, i32* @GL_LINEAR, align 4
  br label %196

194:                                              ; preds = %185
  %195 = load i32, i32* @GL_NEAREST, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %195, %194 ]
  %198 = call i32 @glTexParameteri(i32 %186, i32 %187, i32 %197)
  %199 = load i32, i32* @GL_TEXTURE_2D, align 4
  %200 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = load i32, i32* @GL_LINEAR, align 4
  br label %209

207:                                              ; preds = %196
  %208 = load i32, i32* @GL_NEAREST, align 4
  br label %209

209:                                              ; preds = %207, %205
  %210 = phi i32 [ %206, %205 ], [ %208, %207 ]
  %211 = call i32 @glTexParameteri(i32 %199, i32 %200, i32 %210)
  br label %246

212:                                              ; preds = %179
  %213 = load i64, i64* %13, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %213, %216
  br i1 %217, label %218, label %245

218:                                              ; preds = %212
  %219 = load i32, i32* @GL_TEXTURE_2D, align 4
  %220 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = load i32, i32* @GL_LINEAR, align 4
  br label %229

227:                                              ; preds = %218
  %228 = load i32, i32* @GL_NEAREST, align 4
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i32 [ %226, %225 ], [ %228, %227 ]
  %231 = call i32 @glTexParameteri(i32 %219, i32 %220, i32 %230)
  %232 = load i32, i32* @GL_TEXTURE_2D, align 4
  %233 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %229
  %239 = load i32, i32* @GL_LINEAR, align 4
  br label %242

240:                                              ; preds = %229
  %241 = load i32, i32* @GL_NEAREST, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  %244 = call i32 @glTexParameteri(i32 %232, i32 %233, i32 %243)
  br label %245

245:                                              ; preds = %242, %212
  br label %246

246:                                              ; preds = %245, %209
  %247 = load i32, i32* @GL_TEXTURE_2D, align 4
  %248 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %249 = load i32, i32* @GL_REPEAT, align 4
  %250 = call i32 @glTexParameteri(i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* @GL_TEXTURE_2D, align 4
  %252 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %253 = load i32, i32* @GL_REPEAT, align 4
  %254 = call i32 @glTexParameteri(i32 %251, i32 %252, i32 %253)
  %255 = load i32, i32* @GL_PROJECTION, align 4
  %256 = call i32 @glMatrixMode(i32 %255)
  %257 = call i32 (...) @glPushMatrix()
  %258 = call i32 (...) @glLoadIdentity()
  %259 = load i32, i32* @GL_MODELVIEW, align 4
  %260 = call i32 @glMatrixMode(i32 %259)
  %261 = call i32 (...) @glPushMatrix()
  %262 = call i32 (...) @glLoadIdentity()
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %246
  %268 = load i64, i64* %13, align 8
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %268, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %267
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @glRotatef(i64 %276, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  br label %278

278:                                              ; preds = %273, %267, %246
  %279 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %280 = call i32 @glEnableClientState(i32 %279)
  %281 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %282 = call i32 @glEnableClientState(i32 %281)
  %283 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %284 = call i32 @glEnableClientState(i32 %283)
  %285 = load i32, i32* @GL_FLOAT, align 4
  %286 = getelementptr inbounds [16 x float], [16 x float]* %21, i64 0, i64 0
  %287 = call i32 @glColorPointer(i32 4, i32 %285, i32 0, float* %286)
  %288 = load i32, i32* @GL_FLOAT, align 4
  %289 = getelementptr inbounds [12 x float], [12 x float]* %20, i64 0, i64 0
  %290 = call i32 @glVertexPointer(i32 3, i32 %288, i32 0, float* %289)
  %291 = load i32, i32* @GL_FLOAT, align 4
  %292 = getelementptr inbounds [8 x float], [8 x float]* %24, i64 0, i64 0
  %293 = call i32 @glTexCoordPointer(i32 2, i32 %291, i32 0, float* %292)
  %294 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %295 = call i32 @glDrawArrays(i32 %294, i32 0, i32 4)
  %296 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %297 = call i32 @glDisableClientState(i32 %296)
  %298 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %299 = call i32 @glDisableClientState(i32 %298)
  %300 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %301 = call i32 @glDisableClientState(i32 %300)
  %302 = load i32, i32* @GL_MODELVIEW, align 4
  %303 = call i32 @glMatrixMode(i32 %302)
  %304 = call i32 (...) @glPopMatrix()
  %305 = load i32, i32* @GL_PROJECTION, align 4
  %306 = call i32 @glMatrixMode(i32 %305)
  %307 = call i32 (...) @glPopMatrix()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @glDisable(i32) #2

declare dso_local i32 @glEnable(i32) #2

declare dso_local i32 @glPixelStorei(i32, i32) #2

declare dso_local i32 @glBindTexture(i32, i64) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @glTexParameteri(i32, i32, i32) #2

declare dso_local i32 @glMatrixMode(i32) #2

declare dso_local i32 @glPushMatrix(...) #2

declare dso_local i32 @glLoadIdentity(...) #2

declare dso_local i32 @glRotatef(i64, float, float, float) #2

declare dso_local i32 @glEnableClientState(i32) #2

declare dso_local i32 @glColorPointer(i32, i32, i32, float*) #2

declare dso_local i32 @glVertexPointer(i32, i32, i32, float*) #2

declare dso_local i32 @glTexCoordPointer(i32, i32, i32, float*) #2

declare dso_local i32 @glDrawArrays(i32, i32, i32) #2

declare dso_local i32 @glDisableClientState(i32) #2

declare dso_local i32 @glPopMatrix(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
