; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_luma_intra_pred_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_luma_intra_pred_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i64, i64 }
%struct.TYPE_12__ = type { i64, i32 }

@INTRA_DC = common dso_local global i32 0, align 4
@INTRA_PLANAR = common dso_local global i32 0, align 4
@INTRA_ANGULAR_26 = common dso_local global i32 0, align 4
@uint8_t = common dso_local global i32 0, align 4
@PF_INTRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32, i32, i32)* @luma_intra_pred_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luma_intra_pred_mode(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [3 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %29, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %37, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %51, %57
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @av_mod_uintp2(i32 %59, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @av_mod_uintp2(i32 %67, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %5
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79, %5
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %85, i64 %92
  %94 = load i32, i32* %93, align 4
  br label %97

95:                                               ; preds = %79
  %96 = load i32, i32* @INTRA_DC, align 4
  br label %97

97:                                               ; preds = %95, %82
  %98 = phi i32 [ %94, %82 ], [ %96, %95 ]
  store i32 %98, i32* %18, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103, %97
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %109, i64 %116
  %118 = load i32, i32* %117, align 4
  br label %121

119:                                              ; preds = %103
  %120 = load i32, i32* @INTRA_DC, align 4
  br label %121

121:                                              ; preds = %119, %106
  %122 = phi i32 [ %118, %106 ], [ %120, %119 ]
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %123, %129
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %130, %136
  store i32 %137, i32* %20, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %21, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* %20, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %121
  %148 = load i32, i32* @INTRA_DC, align 4
  store i32 %148, i32* %18, align 4
  br label %149

149:                                              ; preds = %147, %121
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %180

153:                                              ; preds = %149
  %154 = load i32, i32* %19, align 4
  %155 = icmp slt i32 %154, 2
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load i32, i32* @INTRA_PLANAR, align 4
  %158 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* @INTRA_DC, align 4
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @INTRA_ANGULAR_26, align 4
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  store i32 %161, i32* %162, align 4
  br label %179

163:                                              ; preds = %153
  %164 = load i32, i32* %19, align 4
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %19, align 4
  %167 = sub nsw i32 %166, 2
  %168 = sub nsw i32 %167, 1
  %169 = add nsw i32 %168, 32
  %170 = and i32 %169, 31
  %171 = add nsw i32 2, %170
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %19, align 4
  %174 = sub nsw i32 %173, 2
  %175 = add nsw i32 %174, 1
  %176 = and i32 %175, 31
  %177 = add nsw i32 2, %176
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %163, %156
  br label %215

180:                                              ; preds = %149
  %181 = load i32, i32* %19, align 4
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  store i32 %181, i32* %182, align 4
  %183 = load i32, i32* %18, align 4
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  store i32 %183, i32* %184, align 4
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @INTRA_PLANAR, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %180
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @INTRA_PLANAR, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i32, i32* @INTRA_PLANAR, align 4
  %196 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  store i32 %195, i32* %196, align 4
  br label %214

197:                                              ; preds = %189, %180
  %198 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @INTRA_DC, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %197
  %203 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @INTRA_DC, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* @INTRA_DC, align 4
  %209 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  store i32 %208, i32* %209, align 4
  br label %213

210:                                              ; preds = %202, %197
  %211 = load i32, i32* @INTRA_ANGULAR_26, align 4
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  store i32 %211, i32* %212, align 4
  br label %213

213:                                              ; preds = %210, %207
  br label %214

214:                                              ; preds = %213, %194
  br label %215

215:                                              ; preds = %214, %179
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %22, align 4
  br label %287

225:                                              ; preds = %215
  %226 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %227, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %225
  %232 = load i32, i32* @uint8_t, align 4
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @FFSWAP(i32 %232, i32 %234, i32 %236)
  br label %238

238:                                              ; preds = %231, %225
  %239 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = icmp sgt i32 %240, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %238
  %245 = load i32, i32* @uint8_t, align 4
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @FFSWAP(i32 %245, i32 %247, i32 %249)
  br label %251

251:                                              ; preds = %244, %238
  %252 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %253, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %251
  %258 = load i32, i32* @uint8_t, align 4
  %259 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @FFSWAP(i32 %258, i32 %260, i32 %262)
  br label %264

264:                                              ; preds = %257, %251
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  store i32 %268, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %269

269:                                              ; preds = %283, %264
  %270 = load i32, i32* %24, align 4
  %271 = icmp slt i32 %270, 3
  br i1 %271, label %272, label %286

272:                                              ; preds = %269
  %273 = load i32, i32* %22, align 4
  %274 = load i32, i32* %24, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp sge i32 %273, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %272
  %280 = load i32, i32* %22, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %22, align 4
  br label %282

282:                                              ; preds = %279, %272
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %24, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %24, align 4
  br label %269

286:                                              ; preds = %269
  br label %287

287:                                              ; preds = %286, %218
  %288 = load i32, i32* %15, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  store i32 1, i32* %15, align 4
  br label %291

291:                                              ; preds = %290, %287
  store i32 0, i32* %24, align 4
  br label %292

292:                                              ; preds = %335, %291
  %293 = load i32, i32* %24, align 4
  %294 = load i32, i32* %15, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %338

296:                                              ; preds = %292
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %13, align 4
  %301 = load i32, i32* %24, align 4
  %302 = add nsw i32 %300, %301
  %303 = load i32, i32* %14, align 4
  %304 = mul nsw i32 %302, %303
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %304, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %299, i64 %307
  %309 = load i32, i32* %22, align 4
  %310 = load i32, i32* %15, align 4
  %311 = call i32 @memset(i32* %308, i32 %309, i32 %310)
  store i32 0, i32* %25, align 4
  br label %312

312:                                              ; preds = %331, %296
  %313 = load i32, i32* %25, align 4
  %314 = load i32, i32* %15, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %334

316:                                              ; preds = %312
  %317 = load i32, i32* @PF_INTRA, align 4
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* %25, align 4
  %321 = add nsw i32 %319, %320
  %322 = load i32, i32* %14, align 4
  %323 = mul nsw i32 %321, %322
  %324 = load i32, i32* %12, align 4
  %325 = add nsw i32 %323, %324
  %326 = load i32, i32* %24, align 4
  %327 = add nsw i32 %325, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 0
  store i32 %317, i32* %330, align 4
  br label %331

331:                                              ; preds = %316
  %332 = load i32, i32* %25, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %25, align 4
  br label %312

334:                                              ; preds = %312
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %24, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %24, align 4
  br label %292

338:                                              ; preds = %292
  %339 = load i32, i32* %22, align 4
  ret i32 %339
}

declare dso_local i32 @av_mod_uintp2(i32, i32) #1

declare dso_local i32 @FFSWAP(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
