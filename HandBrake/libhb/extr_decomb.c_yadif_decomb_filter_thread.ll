; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_yadif_decomb_filter_thread.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_yadif_decomb_filter_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__**, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32*, i32*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"yadif thread started for segment %d\00", align 1
@MODE_DECOMB_BLEND = common dso_local global i32 0, align 4
@MODE_DECOMB_CUBIC = common dso_local global i32 0, align 4
@MODE_DECOMB_YADIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @yadif_decomb_filter_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yadif_decomb_filter_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 -1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 2, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 6, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 2, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32 -1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 3, i32* %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %4, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @hb_deep_log(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %1, %483
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @taskset_thread_wait4start(i32* %54, i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @taskset_thread_stop(i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %488

63:                                               ; preds = %52
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 %68
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %3, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %13, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %10, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %480, %63
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %483

90:                                               ; preds = %87
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %16, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %17, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = sub nsw i32 %115, 2
  store i32 %116, i32* %19, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %124, %131
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %90
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  %138 = and i32 %137, -2
  br label %142

139:                                              ; preds = %90
  %140 = load i32, i32* %6, align 4
  %141 = or i32 %140, 1
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi i32 [ %138, %135 ], [ %141, %139 ]
  store i32 %143, i32* %20, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %17, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  store i32* %156, i32** %21, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %159, i64 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %17, align 4
  %171 = mul nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  store i32* %173, i32** %22, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %176, i64 1
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %17, align 4
  %188 = mul nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  store i32* %190, i32** %23, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %193, i64 2
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %17, align 4
  %205 = mul nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  store i32* %207, i32** %24, align 8
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @MODE_DECOMB_BLEND, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %239

211:                                              ; preds = %142
  %212 = load i32, i32* %20, align 4
  store i32 %212, i32* %15, align 4
  br label %213

213:                                              ; preds = %235, %211
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %238

217:                                              ; preds = %213
  %218 = load i32*, i32** %21, align 8
  %219 = load i32*, i32** %23, align 8
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @blend_filter_line(%struct.TYPE_18__* %9, i32* %218, i32* %219, i32 %220, i32 %221, i32 %222, i32 %223)
  %225 = load i32, i32* %17, align 4
  %226 = mul nsw i32 %225, 2
  %227 = load i32*, i32** %21, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32* %229, i32** %21, align 8
  %230 = load i32, i32* %17, align 4
  %231 = mul nsw i32 %230, 2
  %232 = load i32*, i32** %23, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %23, align 8
  br label %235

235:                                              ; preds = %217
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %236, 2
  store i32 %237, i32* %15, align 4
  br label %213

238:                                              ; preds = %213
  br label %380

239:                                              ; preds = %142
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* @MODE_DECOMB_CUBIC, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %271

243:                                              ; preds = %239
  %244 = load i32, i32* %20, align 4
  store i32 %244, i32* %15, align 4
  br label %245

245:                                              ; preds = %267, %243
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %7, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %270

249:                                              ; preds = %245
  %250 = load i32*, i32** %21, align 8
  %251 = load i32*, i32** %23, align 8
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* %18, align 4
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @cubic_interpolate_line(i32* %250, i32* %251, i32 %252, i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %17, align 4
  %258 = mul nsw i32 %257, 2
  %259 = load i32*, i32** %21, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %21, align 8
  %262 = load i32, i32* %17, align 4
  %263 = mul nsw i32 %262, 2
  %264 = load i32*, i32** %23, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32* %266, i32** %23, align 8
  br label %267

267:                                              ; preds = %249
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 2
  store i32 %269, i32* %15, align 4
  br label %245

270:                                              ; preds = %245
  br label %379

271:                                              ; preds = %239
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* @MODE_DECOMB_YADIF, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %353

276:                                              ; preds = %271
  %277 = load i32, i32* %20, align 4
  store i32 %277, i32* %15, align 4
  br label %278

278:                                              ; preds = %349, %276
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %7, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %352

282:                                              ; preds = %278
  %283 = load i32, i32* %15, align 4
  %284 = icmp sgt i32 %283, 1
  br i1 %284, label %285, label %304

285:                                              ; preds = %282
  %286 = load i32, i32* %15, align 4
  %287 = load i32, i32* %19, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %304

289:                                              ; preds = %285
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %291 = load i32*, i32** %21, align 8
  %292 = load i32*, i32** %22, align 8
  %293 = load i32*, i32** %23, align 8
  %294 = load i32*, i32** %24, align 8
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %16, align 4
  %297 = load i32, i32* %18, align 4
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* %12, align 4
  %301 = xor i32 %299, %300
  %302 = load i32, i32* %15, align 4
  %303 = call i32 @yadif_filter_line(%struct.TYPE_16__* %290, i32* %291, i32* %292, i32* %293, i32* %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %301, i32 %302)
  br label %328

304:                                              ; preds = %285, %282
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* %11, align 4
  %307 = xor i32 %305, %306
  %308 = load i32, i32* %17, align 4
  %309 = mul nsw i32 %307, %308
  store i32 %309, i32* %25, align 4
  %310 = load i32*, i32** %21, align 8
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %313, i64 1
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %316, align 8
  %318 = load i32, i32* %14, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %25, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %16, align 4
  %327 = call i32 @memcpy(i32* %310, i32* %325, i32 %326)
  br label %328

328:                                              ; preds = %304, %289
  %329 = load i32, i32* %17, align 4
  %330 = mul nsw i32 %329, 2
  %331 = load i32*, i32** %21, align 8
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  store i32* %333, i32** %21, align 8
  %334 = load i32, i32* %17, align 4
  %335 = mul nsw i32 %334, 2
  %336 = load i32*, i32** %22, align 8
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  store i32* %338, i32** %22, align 8
  %339 = load i32, i32* %17, align 4
  %340 = mul nsw i32 %339, 2
  %341 = load i32*, i32** %23, align 8
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  store i32* %343, i32** %23, align 8
  %344 = load i32, i32* %17, align 4
  %345 = mul nsw i32 %344, 2
  %346 = load i32*, i32** %24, align 8
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds i32, i32* %346, i64 %347
  store i32* %348, i32** %24, align 8
  br label %349

349:                                              ; preds = %328
  %350 = load i32, i32* %15, align 4
  %351 = add nsw i32 %350, 2
  store i32 %351, i32* %15, align 4
  br label %278

352:                                              ; preds = %278
  br label %378

353:                                              ; preds = %271
  %354 = load i32, i32* %20, align 4
  store i32 %354, i32* %15, align 4
  br label %355

355:                                              ; preds = %374, %353
  %356 = load i32, i32* %15, align 4
  %357 = load i32, i32* %7, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %377

359:                                              ; preds = %355
  %360 = load i32*, i32** %21, align 8
  %361 = load i32*, i32** %23, align 8
  %362 = load i32, i32* %16, align 4
  %363 = call i32 @memcpy(i32* %360, i32* %361, i32 %362)
  %364 = load i32, i32* %17, align 4
  %365 = mul nsw i32 %364, 2
  %366 = load i32*, i32** %21, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i32, i32* %366, i64 %367
  store i32* %368, i32** %21, align 8
  %369 = load i32, i32* %17, align 4
  %370 = mul nsw i32 %369, 2
  %371 = load i32*, i32** %23, align 8
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  store i32* %373, i32** %23, align 8
  br label %374

374:                                              ; preds = %359
  %375 = load i32, i32* %15, align 4
  %376 = add nsw i32 %375, 2
  store i32 %376, i32* %15, align 4
  br label %355

377:                                              ; preds = %355
  br label %378

378:                                              ; preds = %377, %352
  br label %379

379:                                              ; preds = %378, %270
  br label %380

380:                                              ; preds = %379, %238
  %381 = load i32, i32* %11, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %387, label %383

383:                                              ; preds = %380
  %384 = load i32, i32* %6, align 4
  %385 = add nsw i32 %384, 1
  %386 = and i32 %385, -2
  br label %390

387:                                              ; preds = %380
  %388 = load i32, i32* %6, align 4
  %389 = or i32 %388, 1
  br label %390

390:                                              ; preds = %387, %383
  %391 = phi i32 [ %386, %383 ], [ %389, %387 ]
  store i32 %391, i32* %20, align 4
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %393, align 8
  %395 = load i32, i32* %14, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 3
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %20, align 4
  %401 = load i32, i32* %17, align 4
  %402 = mul nsw i32 %400, %401
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %399, i64 %403
  store i32* %404, i32** %21, align 8
  %405 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 1
  %407 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %407, i64 0
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %410, align 8
  %412 = load i32, i32* %14, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 0
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %20, align 4
  %418 = load i32, i32* %17, align 4
  %419 = mul nsw i32 %417, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %416, i64 %420
  store i32* %421, i32** %22, align 8
  %422 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 1
  %424 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %424, i64 1
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 0
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** %427, align 8
  %429 = load i32, i32* %14, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %20, align 4
  %435 = load i32, i32* %17, align 4
  %436 = mul nsw i32 %434, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %433, i64 %437
  store i32* %438, i32** %23, align 8
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 1
  %441 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %441, i64 2
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i32 0, i32 0
  %445 = load %struct.TYPE_12__*, %struct.TYPE_12__** %444, align 8
  %446 = load i32, i32* %14, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 0
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %20, align 4
  %452 = load i32, i32* %17, align 4
  %453 = mul nsw i32 %451, %452
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %450, i64 %454
  store i32* %455, i32** %24, align 8
  %456 = load i32, i32* %20, align 4
  store i32 %456, i32* %15, align 4
  br label %457

457:                                              ; preds = %476, %390
  %458 = load i32, i32* %15, align 4
  %459 = load i32, i32* %7, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %479

461:                                              ; preds = %457
  %462 = load i32*, i32** %21, align 8
  %463 = load i32*, i32** %23, align 8
  %464 = load i32, i32* %16, align 4
  %465 = call i32 @memcpy(i32* %462, i32* %463, i32 %464)
  %466 = load i32, i32* %17, align 4
  %467 = mul nsw i32 %466, 2
  %468 = load i32*, i32** %21, align 8
  %469 = sext i32 %467 to i64
  %470 = getelementptr inbounds i32, i32* %468, i64 %469
  store i32* %470, i32** %21, align 8
  %471 = load i32, i32* %17, align 4
  %472 = mul nsw i32 %471, 2
  %473 = load i32*, i32** %23, align 8
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds i32, i32* %473, i64 %474
  store i32* %475, i32** %23, align 8
  br label %476

476:                                              ; preds = %461
  %477 = load i32, i32* %15, align 4
  %478 = add nsw i32 %477, 2
  store i32 %478, i32* %15, align 4
  br label %457

479:                                              ; preds = %457
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %14, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %14, align 4
  br label %87

483:                                              ; preds = %87
  %484 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %484, i32 0, i32 0
  %486 = load i32, i32* %5, align 4
  %487 = call i32 @taskset_thread_complete(i32* %485, i32 %486)
  br label %52

488:                                              ; preds = %62
  %489 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %489, i32 0, i32 0
  %491 = load i32, i32* %5, align 4
  %492 = call i32 @taskset_thread_complete(i32* %490, i32 %491)
  ret void
}

declare dso_local i32 @hb_deep_log(i32, i8*, i32) #1

declare dso_local i32 @taskset_thread_wait4start(i32*, i32) #1

declare dso_local i64 @taskset_thread_stop(i32*, i32) #1

declare dso_local i32 @blend_filter_line(%struct.TYPE_18__*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cubic_interpolate_line(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @yadif_filter_line(%struct.TYPE_16__*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @taskset_thread_complete(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
