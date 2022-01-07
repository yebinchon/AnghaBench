; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionBatchUpdate.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionBatchUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@SDB_TYPE_INSERT = common dso_local global i64 0, align 8
@SDB_TYPE_DELETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mgmtMeterActionBatchUpdate(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %11, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = call i64 @mgmtIsMetric(%struct.TYPE_10__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %187

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SDB_TYPE_INSERT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %91

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i8* @realloc(i8* %44, i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 8
  %79 = getelementptr i8, i8* %75, i64 %78
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memcpy(i32 %80, i64 %83, i32 %89)
  br label %183

91:                                               ; preds = %28
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SDB_TYPE_DELETE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %182

97:                                               ; preds = %91
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %13, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br label %113

113:                                              ; preds = %107, %97
  %114 = phi i1 [ false, %97 ], [ %112, %107 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 1
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %162

123:                                              ; preds = %113
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = mul i64 8, %132
  %134 = getelementptr i8, i8* %126, i64 %133
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 5
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %140, %141
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = mul i64 8, %144
  %146 = getelementptr i8, i8* %137, i64 %145
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %153, %154
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = mul i64 8, %157
  %159 = sub i64 %150, %158
  %160 = trunc i64 %159 to i32
  %161 = call i32 @memmove(i8* %134, i8* %146, i32 %160)
  br label %162

162:                                              ; preds = %123, %113
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = sub i64 %166, 8
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %170, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 5
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @realloc(i8* %175, i32 %178)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %162, %91
  br label %183

183:                                              ; preds = %182, %34
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 3
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %5, align 8
  br label %335

187:                                              ; preds = %4
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %189 = call i64 @mgmtMeterCreateFromMetric(%struct.TYPE_10__* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %333

191:                                              ; preds = %187
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @SDB_TYPE_INSERT, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %255

197:                                              ; preds = %191
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %201, %struct.TYPE_11__** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %202

202:                                              ; preds = %219, %197
  %203 = load i32, i32* %17, align 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %202
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %214
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %16, align 4
  br label %219

219:                                              ; preds = %208
  %220 = load i32, i32* %17, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %17, align 4
  br label %202

222:                                              ; preds = %202
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 5
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = add nsw i32 %228, %229
  %231 = call i8* @realloc(i8* %225, i32 %230)
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 5
  store i8* %231, i8** %233, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 5
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 6
  store i8* %236, i8** %238, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 5
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = getelementptr i8, i8* %241, i64 %245
  %247 = ptrtoint i8* %246 to i32
  %248 = load i32, i32* %16, align 4
  %249 = call i32 @memset(i32 %247, i32 0, i32 %248)
  %250 = load i32, i32* %16, align 4
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %329

255:                                              ; preds = %191
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @SDB_TYPE_DELETE, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %328

261:                                              ; preds = %255
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = inttoptr i64 %264 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %265, %struct.TYPE_9__** %18, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %19, align 4
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %20, align 4
  %273 = load i32, i32* %19, align 4
  %274 = load i32, i32* %20, align 4
  %275 = add nsw i32 %273, %274
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = icmp sle i32 %275, %278
  %280 = zext i1 %279 to i32
  %281 = call i32 @assert(i32 %280)
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* %20, align 4
  %284 = add nsw i32 %282, %283
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %284, %287
  br i1 %288, label %289, label %313

289:                                              ; preds = %261
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 5
  %292 = load i8*, i8** %291, align 8
  %293 = load i32, i32* %19, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr i8, i8* %292, i64 %294
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 5
  %298 = load i8*, i8** %297, align 8
  %299 = load i32, i32* %19, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr i8, i8* %298, i64 %300
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr i8, i8* %301, i64 %303
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %19, align 4
  %309 = load i32, i32* %20, align 4
  %310 = add nsw i32 %308, %309
  %311 = sub nsw i32 %307, %310
  %312 = call i32 @memmove(i8* %295, i8* %304, i32 %311)
  br label %313

313:                                              ; preds = %289, %261
  %314 = load i32, i32* %20, align 4
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = sub nsw i32 %317, %314
  store i32 %318, i32* %316, align 8
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 5
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = call i8* @realloc(i8* %321, i32 %324)
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 5
  store i8* %325, i8** %327, align 8
  br label %328

328:                                              ; preds = %313, %255
  br label %329

329:                                              ; preds = %328, %222
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 4
  %332 = load i8*, i8** %331, align 8
  store i8* %332, i8** %5, align 8
  br label %335

333:                                              ; preds = %187
  br label %334

334:                                              ; preds = %333
  store i8* null, i8** %5, align 8
  br label %335

335:                                              ; preds = %334, %329, %183
  %336 = load i8*, i8** %5, align 8
  ret i8* %336
}

declare dso_local i64 @mgmtIsMetric(%struct.TYPE_10__*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @mgmtMeterCreateFromMetric(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
