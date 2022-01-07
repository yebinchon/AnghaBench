; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_draw_scope.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_draw_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_20__, i64, %struct.TYPE_14__*, i32 (%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32, i32*)* }
%struct.TYPE_20__ = type { i32, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32, i32, i32, i32, %struct.TYPE_19__*, i32*, i32)* @draw_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_scope(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_19__* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_18__, align 4
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @FFABS(i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 -1
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @FFABS(i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 -1
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %8
  %49 = load i32, i32* %17, align 4
  br label %53

50:                                               ; preds = %8
  %51 = load i32, i32* %19, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %52, %50 ]
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %21, align 4
  br label %56

56:                                               ; preds = %369, %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %336

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %336

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %336

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %336

74:                                               ; preds = %68
  %75 = bitcast %struct.TYPE_18__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %75, i8 0, i64 4, i1 false)
  %76 = bitcast [4 x i32]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %76, i8 0, i64 16, i1 false)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 5
  %79 = load i32 (%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32, i32*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32, i32*)** %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %86 = call i32 %79(%struct.TYPE_20__* %81, %struct.TYPE_18__* %23, %struct.TYPE_19__* %82, i32 %83, i32 %84, i32* %85)
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %88, i32* %98, align 4
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %100, i32* %110, align 4
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32 %112, i32* %122, align 4
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  store i32 %124, i32* %134, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %136, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %335

143:                                              ; preds = %74
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 8
  br i1 %153, label %154, label %236

154:                                              ; preds = %143
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %209

160:                                              ; preds = %154
  store i32 0, i32* %25, align 4
  br label %161

161:                                              ; preds = %205, %160
  %162 = load i32, i32* %25, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %162, %168
  br i1 %169, label %170, label %208

170:                                              ; preds = %161
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 %173, %175
  %177 = and i64 %176, 1
  %178 = mul i64 255, %177
  %179 = trunc i64 %178 to i32
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 2
  %182 = load i32**, i32*** %181, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 0
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %11, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %192, %198
  %200 = add nsw i32 %191, %199
  %201 = load i32, i32* %25, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %184, i64 %203
  store i32 %179, i32* %204, align 4
  br label %205

205:                                              ; preds = %170
  %206 = load i32, i32* %25, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %25, align 4
  br label %161

208:                                              ; preds = %161
  br label %235

209:                                              ; preds = %154
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %16, align 4
  %214 = sext i32 %213 to i64
  %215 = add i64 %212, %214
  %216 = and i64 %215, 1
  %217 = mul i64 255, %216
  %218 = trunc i64 %217 to i32
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 2
  %221 = load i32**, i32*** %220, align 8
  %222 = getelementptr inbounds i32*, i32** %221, i64 0
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %11, align 4
  %230 = mul nsw i32 %228, %229
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %223, i64 %233
  store i32 %218, i32* %234, align 4
  br label %235

235:                                              ; preds = %209, %208
  br label %334

236:                                              ; preds = %143
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %299

242:                                              ; preds = %236
  store i32 0, i32* %26, align 4
  br label %243

243:                                              ; preds = %295, %242
  %244 = load i32, i32* %26, align 4
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %244, %250
  br i1 %251, label %252, label %298

252:                                              ; preds = %243
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  %255 = load i32**, i32*** %254, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 0
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %11, align 4
  %264 = mul nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %257, i64 %265
  %267 = load i32, i32* %10, align 4
  %268 = mul nsw i32 2, %267
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %26, align 4
  %276 = add nsw i32 %274, %275
  %277 = mul nsw i32 %268, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %266, i64 %278
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = add i64 %287, %289
  %291 = and i64 %290, 1
  %292 = mul i64 %284, %291
  %293 = trunc i64 %292 to i32
  %294 = call i32 @AV_WN16(i32* %279, i32 %293)
  br label %295

295:                                              ; preds = %252
  %296 = load i32, i32* %26, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %26, align 4
  br label %243

298:                                              ; preds = %243
  br label %333

299:                                              ; preds = %236
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 2
  %302 = load i32**, i32*** %301, align 8
  %303 = getelementptr inbounds i32*, i32** %302, i64 0
  %304 = load i32*, i32** %303, align 8
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 3
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %11, align 4
  %311 = mul nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %304, i64 %312
  %314 = load i32, i32* %10, align 4
  %315 = mul nsw i32 2, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = sub nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* %16, align 4
  %327 = sext i32 %326 to i64
  %328 = add i64 %325, %327
  %329 = and i64 %328, 1
  %330 = mul i64 %322, %329
  %331 = trunc i64 %330 to i32
  %332 = call i32 @AV_WN16(i32* %317, i32 %331)
  br label %333

333:                                              ; preds = %299, %298
  br label %334

334:                                              ; preds = %333, %235
  br label %335

335:                                              ; preds = %334, %74
  br label %336

336:                                              ; preds = %335, %68, %62, %59, %56
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %12, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %336
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %13, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %340
  br label %370

345:                                              ; preds = %340, %336
  %346 = load i32, i32* %21, align 4
  store i32 %346, i32* %22, align 4
  %347 = load i32, i32* %22, align 4
  %348 = load i32, i32* %17, align 4
  %349 = sub nsw i32 0, %348
  %350 = icmp sgt i32 %347, %349
  br i1 %350, label %351, label %358

351:                                              ; preds = %345
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* %21, align 4
  %354 = sub nsw i32 %353, %352
  store i32 %354, i32* %21, align 4
  %355 = load i32, i32* %18, align 4
  %356 = load i32, i32* %10, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %10, align 4
  br label %358

358:                                              ; preds = %351, %345
  %359 = load i32, i32* %22, align 4
  %360 = load i32, i32* %19, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %369

362:                                              ; preds = %358
  %363 = load i32, i32* %17, align 4
  %364 = load i32, i32* %21, align 4
  %365 = add nsw i32 %364, %363
  store i32 %365, i32* %21, align 4
  %366 = load i32, i32* %20, align 4
  %367 = load i32, i32* %11, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* %11, align 4
  br label %369

369:                                              ; preds = %362, %358
  br label %56

370:                                              ; preds = %344
  ret void
}

declare dso_local i32 @FFABS(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @AV_WN16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
