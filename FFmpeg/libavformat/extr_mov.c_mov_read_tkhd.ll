; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_tkhd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_tkhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MOV_TKHD_FLAG_ENABLED = common dso_local global i32 0, align 4
@AV_DISPOSITION_DEFAULT = common dso_local global i32 0, align 4
@__const.mov_read_tkhd.sh = private unnamed_addr constant [3 x i32] [i32 16, i32 16, i32 30], align 4
@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32)* @mov_read_tkhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_tkhd(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x [3 x i32]], align 16
  %14 = alloca [3 x [3 x i32]], align 16
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca double, align 8
  %21 = alloca [2 x double], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = bitcast [3 x [3 x i32]]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 36, i1 false)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %335

30:                                               ; preds = %3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %35, i64 %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %15, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %16, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %4, align 4
  br label %335

54:                                               ; preds = %30
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @avio_r8(i32* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @avio_rb24(i32* %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @MOV_TKHD_FLAG_ENABLED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @AV_DISPOSITION_DEFAULT, align 4
  br label %66

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @avio_rb64(i32* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @avio_rb64(i32* %77)
  br label %84

79:                                               ; preds = %66
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @avio_rb32(i32* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @avio_rb32(i32* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @avio_rb32(i32* %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @avio_rb32(i32* %89)
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @avio_rb64(i32* %94)
  br label %99

96:                                               ; preds = %84
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @avio_rb32(i32* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i32 [ %95, %93 ], [ %98, %96 ]
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @avio_rb32(i32* %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @avio_rb32(i32* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @avio_rb16(i32* %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @avio_rb16(i32* %107)
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @avio_rb16(i32* %109)
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @avio_rb16(i32* %111)
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %135, %99
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %138

116:                                              ; preds = %113
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @avio_rb32(i32* %117)
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %13, i64 0, i64 %120
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %121, i64 0, i64 0
  store i32 %118, i32* %122, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @avio_rb32(i32* %123)
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %13, i64 0, i64 %126
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %127, i64 0, i64 1
  store i32 %124, i32* %128, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @avio_rb32(i32* %129)
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %13, i64 0, i64 %132
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %133, i64 0, i64 2
  store i32 %130, i32* %134, align 4
  br label %135

135:                                              ; preds = %116
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %113

138:                                              ; preds = %113
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @avio_rb32(i32* %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @avio_rb32(i32* %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %11, align 4
  %144 = ashr i32 %143, 16
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %12, align 4
  %148 = ashr i32 %147, 16
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %204, %138
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 3
  br i1 %153, label %154, label %207

154:                                              ; preds = %151
  %155 = bitcast [3 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 bitcast ([3 x i32]* @__const.mov_read_tkhd.sh to i8*), i64 12, i1 false)
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %200, %154
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 3
  br i1 %158, label %159, label %203

159:                                              ; preds = %156
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %196, %159
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %161, 3
  br i1 %162, label %163, label %199

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %13, i64 0, i64 %165
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %166, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %170, %181
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %182, %186
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %14, i64 0, i64 %189
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %190, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, %187
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %163
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %160

199:                                              ; preds = %160
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %156

203:                                              ; preds = %156
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %151

207:                                              ; preds = %151
  %208 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %14, i64 0, i64 0
  %209 = bitcast [3 x i32]* %208 to i32**
  %210 = call i32 @IS_MATRIX_IDENT(i32** %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %259, label %212

212:                                              ; preds = %207
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  %215 = call i32 @av_freep(i32** %214)
  %216 = call i32* @av_malloc(i32 36)
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  store i32* %216, i32** %218, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %212
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = call i32 @AVERROR(i32 %224)
  store i32 %225, i32* %4, align 4
  br label %335

226:                                              ; preds = %212
  store i32 0, i32* %8, align 4
  br label %227

227:                                              ; preds = %255, %226
  %228 = load i32, i32* %8, align 4
  %229 = icmp slt i32 %228, 3
  br i1 %229, label %230, label %258

230:                                              ; preds = %227
  store i32 0, i32* %9, align 4
  br label %231

231:                                              ; preds = %251, %230
  %232 = load i32, i32* %9, align 4
  %233 = icmp slt i32 %232, 3
  br i1 %233, label %234, label %254

234:                                              ; preds = %231
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %14, i64 0, i64 %236
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %237, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = mul nsw i32 %245, 3
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %246, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %244, i64 %249
  store i32 %241, i32* %250, align 4
  br label %251

251:                                              ; preds = %234
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %9, align 4
  br label %231

254:                                              ; preds = %231
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %8, align 4
  br label %227

258:                                              ; preds = %227
  br label %259

259:                                              ; preds = %258, %207
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %334

262:                                              ; preds = %259
  %263 = load i32, i32* %12, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %334

265:                                              ; preds = %262
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %334

270:                                              ; preds = %265
  store i32 0, i32* %8, align 4
  br label %271

271:                                              ; preds = %295, %270
  %272 = load i32, i32* %8, align 4
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %274, label %298

274:                                              ; preds = %271
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = add nsw i32 0, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 3, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call double @hypot(i32 %282, i32 %290)
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 0, i64 %293
  store double %291, double* %294, align 8
  br label %295

295:                                              ; preds = %274
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %8, align 4
  br label %271

298:                                              ; preds = %271
  %299 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 0, i64 0
  %300 = load double, double* %299, align 16
  %301 = fcmp ogt double %300, 0.000000e+00
  br i1 %301, label %302, label %333

302:                                              ; preds = %298
  %303 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 0, i64 1
  %304 = load double, double* %303, align 8
  %305 = fcmp ogt double %304, 0.000000e+00
  br i1 %305, label %306, label %333

306:                                              ; preds = %302
  %307 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 0, i64 0
  %308 = load double, double* %307, align 16
  %309 = fcmp olt double %308, 0x4170000000000000
  br i1 %309, label %310, label %333

310:                                              ; preds = %306
  %311 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 0, i64 1
  %312 = load double, double* %311, align 8
  %313 = fcmp olt double %312, 0x4170000000000000
  br i1 %313, label %314, label %333

314:                                              ; preds = %310
  %315 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 0, i64 0
  %316 = load double, double* %315, align 16
  %317 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 0, i64 1
  %318 = load double, double* %317, align 8
  %319 = fdiv double %316, %318
  %320 = fsub double %319, 1.000000e+00
  %321 = call double @llvm.fabs.f64(double %320)
  %322 = fcmp ogt double %321, 1.000000e-02
  br i1 %322, label %323, label %333

323:                                              ; preds = %314
  %324 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 0, i64 0
  %325 = load double, double* %324, align 16
  %326 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 0, i64 1
  %327 = load double, double* %326, align 8
  %328 = fdiv double %325, %327
  %329 = load i32, i32* @INT_MAX, align 4
  %330 = call i32 @av_d2q(double %328, i32 %329)
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 4
  br label %333

333:                                              ; preds = %323, %314, %310, %306, %302, %298
  br label %334

334:                                              ; preds = %333, %265, %262, %259
  store i32 0, i32* %4, align 4
  br label %335

335:                                              ; preds = %334, %223, %52, %29
  %336 = load i32, i32* %4, align 4
  ret i32 %336
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @avio_r8(i32*) #2

declare dso_local i32 @avio_rb24(i32*) #2

declare dso_local i32 @avio_rb64(i32*) #2

declare dso_local i32 @avio_rb32(i32*) #2

declare dso_local i32 @avio_rb16(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @IS_MATRIX_IDENT(i32**) #2

declare dso_local i32 @av_freep(i32**) #2

declare dso_local i32* @av_malloc(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local double @hypot(i32, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

declare dso_local i32 @av_d2q(double, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
