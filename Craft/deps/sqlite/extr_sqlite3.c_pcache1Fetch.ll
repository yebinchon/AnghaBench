; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_pcache1Fetch.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_pcache1Fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__**, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i64, i64, %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32, i32, i64, %struct.TYPE_16__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, i32, i32)* @pcache1Fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @pcache1Fetch(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 1
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i1 [ true, %3 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %31, %23
  %37 = phi i1 [ true, %23 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 10
  br label %49

49:                                               ; preds = %44, %36
  %50 = phi i1 [ true, %36 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %57, %49
  %63 = phi i1 [ true, %49 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 11
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %9, align 8
  %69 = call i32 @pcache1EnterMutex(%struct.TYPE_17__* %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ugt i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %62
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = urem i32 %75, %78
  store i32 %79, i32* %11, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 10
  %82 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %82, i64 %84
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %10, align 8
  br label %87

87:                                               ; preds = %99, %74
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = icmp ne %struct.TYPE_16__* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %93, %94
  br label %96

96:                                               ; preds = %90, %87
  %97 = phi i1 [ false, %87 ], [ %95, %90 ]
  br i1 %97, label %98, label %103

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %10, align 8
  br label %87

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %62
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %106 = icmp ne %struct.TYPE_16__* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107, %104
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %112 = call i32 @pcache1PinPage(%struct.TYPE_16__* %111)
  br label %370

113:                                              ; preds = %107
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp uge i32 %116, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = sub i32 %125, %128
  store i32 %129, i32* %7, align 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, 10
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sub i32 %136, %139
  %141 = icmp eq i32 %132, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 9
  %151 = sdiv i32 %150, 10
  %152 = icmp eq i32 %146, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %174

157:                                              ; preds = %113
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp uge i32 %158, %161
  br i1 %162, label %173, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = icmp uge i32 %164, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %163
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %171 = call i64 @pcache1UnderMemoryPressure(%struct.TYPE_18__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %163, %157
  br label %370

174:                                              ; preds = %169, %113
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp uge i32 %177, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %174
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %184 = call i64 @pcache1ResizeHash(%struct.TYPE_18__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %370

187:                                              ; preds = %182, %174
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %309

192:                                              ; preds = %187
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = icmp ne %struct.TYPE_16__* %195, null
  br i1 %196, label %197, label %309

197:                                              ; preds = %192
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = add i32 %200, 1
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = icmp uge i32 %201, %204
  br i1 %205, label %219, label %206

206:                                              ; preds = %197
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = zext i32 %212 to i64
  %214 = icmp sge i64 %209, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %206
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %217 = call i64 @pcache1UnderMemoryPressure(%struct.TYPE_18__* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %309

219:                                              ; preds = %215, %206, %197
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 4
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  store %struct.TYPE_16__* %222, %struct.TYPE_16__** %10, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %224 = call i32 @pcache1RemoveFromHash(%struct.TYPE_16__* %223)
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %226 = call i32 @pcache1PinPage(%struct.TYPE_16__* %225)
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %228, align 8
  store %struct.TYPE_18__* %229, %struct.TYPE_18__** %12, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %235, 1
  %237 = and i32 %232, %236
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %219
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 8
  %243 = icmp sge i32 %242, 512
  br label %244

244:                                              ; preds = %239, %219
  %245 = phi i1 [ false, %219 ], [ %243, %239 ]
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 8
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %250, 512
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = sub nsw i32 %259, 1
  %261 = and i32 %256, %260
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %244
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 8
  %267 = icmp sge i32 %266, 512
  br label %268

268:                                              ; preds = %263, %244
  %269 = phi i1 [ false, %244 ], [ %267, %263 ]
  %270 = zext i1 %269 to i32
  %271 = call i32 @assert(i32 %270)
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 4
  %275 = icmp slt i32 %274, 512
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 7
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 8
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %280, %283
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 7
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %287, %290
  %292 = icmp ne i32 %284, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %268
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %295 = call i32 @pcache1FreePage(%struct.TYPE_16__* %294)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  br label %308

296:                                              ; preds = %268
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = sub nsw i64 %299, %302
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = sub nsw i64 %306, %303
  store i64 %307, i64* %305, align 8
  br label %308

308:                                              ; preds = %296, %293
  br label %309

309:                                              ; preds = %308, %215, %192, %187
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %311 = icmp ne %struct.TYPE_16__* %310, null
  br i1 %311, label %325, label %312

312:                                              ; preds = %309
  %313 = load i32, i32* %6, align 4
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  %316 = call i32 (...) @sqlite3BeginBenignMalloc()
  br label %317

317:                                              ; preds = %315, %312
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %319 = call %struct.TYPE_16__* @pcache1AllocPage(%struct.TYPE_18__* %318)
  store %struct.TYPE_16__* %319, %struct.TYPE_16__** %10, align 8
  %320 = load i32, i32* %6, align 4
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = call i32 (...) @sqlite3EndBenignMalloc()
  br label %324

324:                                              ; preds = %322, %317
  br label %325

325:                                              ; preds = %324, %309
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %327 = icmp ne %struct.TYPE_16__* %326, null
  br i1 %327, label %328, label %369

328:                                              ; preds = %325
  %329 = load i32, i32* %5, align 4
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = urem i32 %329, %332
  store i32 %333, i32* %13, align 4
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = add i32 %336, 1
  store i32 %337, i32* %335, align 8
  %338 = load i32, i32* %5, align 4
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 0
  store i32 %338, i32* %340, align 8
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 10
  %343 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %342, align 8
  %344 = load i32, i32* %13, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %343, i64 %345
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %346, align 8
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 5
  store %struct.TYPE_16__* %347, %struct.TYPE_16__** %349, align 8
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 4
  store %struct.TYPE_18__* %350, %struct.TYPE_18__** %352, align 8
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 3
  store i64 0, i64* %354, align 8
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 2
  store i64 0, i64* %356, align 8
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = inttoptr i64 %360 to i8**
  store i8* null, i8** %361, align 8
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 10
  %365 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %364, align 8
  %366 = load i32, i32* %13, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %365, i64 %367
  store %struct.TYPE_16__* %362, %struct.TYPE_16__** %368, align 8
  br label %369

369:                                              ; preds = %328, %325
  br label %370

370:                                              ; preds = %369, %186, %173, %110
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %372 = icmp ne %struct.TYPE_16__* %371, null
  br i1 %372, label %373, label %383

373:                                              ; preds = %370
  %374 = load i32, i32* %5, align 4
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 9
  %377 = load i32, i32* %376, align 8
  %378 = icmp ugt i32 %374, %377
  br i1 %378, label %379, label %383

379:                                              ; preds = %373
  %380 = load i32, i32* %5, align 4
  %381 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %381, i32 0, i32 9
  store i32 %380, i32* %382, align 8
  br label %383

383:                                              ; preds = %379, %373, %370
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %385 = call i32 @pcache1LeaveMutex(%struct.TYPE_17__* %384)
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 1
  ret %struct.TYPE_15__* %387
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pcache1EnterMutex(%struct.TYPE_17__*) #1

declare dso_local i32 @pcache1PinPage(%struct.TYPE_16__*) #1

declare dso_local i64 @pcache1UnderMemoryPressure(%struct.TYPE_18__*) #1

declare dso_local i64 @pcache1ResizeHash(%struct.TYPE_18__*) #1

declare dso_local i32 @pcache1RemoveFromHash(%struct.TYPE_16__*) #1

declare dso_local i32 @pcache1FreePage(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3BeginBenignMalloc(...) #1

declare dso_local %struct.TYPE_16__* @pcache1AllocPage(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3EndBenignMalloc(...) #1

declare dso_local i32 @pcache1LeaveMutex(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
