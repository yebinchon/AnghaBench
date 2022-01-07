; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CombineIp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CombineIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CombineIp(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_14__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %27 = icmp eq %struct.TYPE_15__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %8
  br label %349

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp sgt i32 %35, 65535
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %349

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %349

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %41, %38
  %57 = load i32*, i32** %15, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %61, 4
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i32* @Clone(i32* %69, i32 %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %63
  br label %78

78:                                               ; preds = %77, %59, %56
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %19, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %20, align 4
  br label %85

85:                                               ; preds = %91, %78
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %19, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %94, 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @ReAlloc(i64 %100, i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 8
  store i64 %104, i64* %106, align 8
  br label %85

107:                                              ; preds = %85
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i8*, i8** %12, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @Copy(i32* %124, i8* %125, i32 %126)
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %107
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %130, %107
  store i32 0, i32* %17, align 4
  br label %137

137:                                              ; preds = %252, %136
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @LIST_NUM(i32 %141)
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %144, label %255

144:                                              ; preds = %137
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 12
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %17, align 4
  %149 = call %struct.TYPE_14__* @LIST_DATA(i32 %147, i32 %148)
  store %struct.TYPE_14__* %149, %struct.TYPE_14__** %22, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %155, label %195

155:                                              ; preds = %144
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %158, %161
  %163 = load i32, i32* %11, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %195

165:                                              ; preds = %155
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %166, %167
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %171, %174
  %176 = icmp sle i32 %168, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  store i32 0, i32* %13, align 4
  br label %194

178:                                              ; preds = %165
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %181, %184
  %186 = load i32, i32* %11, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %21, align 4
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %13, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %13, align 4
  br label %194

194:                                              ; preds = %178, %177
  br label %195

195:                                              ; preds = %194, %155, %144
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %199, %200
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %230

203:                                              ; preds = %195
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %206, %209
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %211, %212
  %214 = icmp sge i32 %210, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %203
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %218, %221
  %223 = load i32, i32* %11, align 4
  %224 = sub nsw i32 %222, %223
  %225 = load i32, i32* %13, align 4
  %226 = sub nsw i32 %224, %225
  store i32 %226, i32* %21, align 4
  %227 = load i32, i32* %21, align 4
  %228 = load i32, i32* %13, align 4
  %229 = sub nsw i32 %228, %227
  store i32 %229, i32* %13, align 4
  br label %230

230:                                              ; preds = %215, %203, %195
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %11, align 4
  %235 = icmp sge i32 %233, %234
  br i1 %235, label %236, label %251

236:                                              ; preds = %230
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %239, %242
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %244, %245
  %247 = icmp sle i32 %243, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %236
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  store i32 0, i32* %250, align 4
  br label %251

251:                                              ; preds = %248, %236, %230
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %17, align 4
  br label %137

255:                                              ; preds = %137
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %255
  %259 = call %struct.TYPE_14__* @ZeroMalloc(i32 8)
  store %struct.TYPE_14__* %259, %struct.TYPE_14__** %18, align 8
  %260 = load i32, i32* %11, align 4
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %13, align 4
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 12
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %270 = call i32 @Add(i32 %268, %struct.TYPE_14__* %269)
  br label %271

271:                                              ; preds = %258, %255
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %349

276:                                              ; preds = %271
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %277

277:                                              ; preds = %295, %276
  %278 = load i32, i32* %24, align 4
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 12
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @LIST_NUM(i32 %281)
  %283 = icmp slt i32 %278, %282
  br i1 %283, label %284, label %298

284:                                              ; preds = %277
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 12
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %24, align 4
  %289 = call %struct.TYPE_14__* @LIST_DATA(i32 %287, i32 %288)
  store %struct.TYPE_14__* %289, %struct.TYPE_14__** %25, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %23, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %23, align 4
  br label %295

295:                                              ; preds = %284
  %296 = load i32, i32* %24, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %24, align 4
  br label %277

298:                                              ; preds = %277
  %299 = load i32, i32* %23, align 4
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp eq i32 %299, %302
  br i1 %303, label %304, label %348

304:                                              ; preds = %298
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 11
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 10
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 8
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 7
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 5
  %329 = load i32*, i32** %328, align 8
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @IpReceived(%struct.TYPE_13__* %305, i32 %308, i32 %311, i32 %314, i64 %317, i32 %320, i32 %323, i32 %326, i32* %329, i32 %332, i32 %335, i32 %338)
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %342 = call i32 @FreeIpCombine(%struct.TYPE_13__* %340, %struct.TYPE_15__* %341)
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %347 = call i32 @Delete(i32 %345, %struct.TYPE_15__* %346)
  br label %348

348:                                              ; preds = %304, %298
  br label %349

349:                                              ; preds = %31, %37, %54, %348, %271
  ret void
}

declare dso_local i32* @Clone(i32*, i32) #1

declare dso_local i64 @ReAlloc(i64, i32) #1

declare dso_local i32 @Copy(i32*, i8*, i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_14__* @LIST_DATA(i32, i32) #1

declare dso_local %struct.TYPE_14__* @ZeroMalloc(i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @IpReceived(%struct.TYPE_13__*, i32, i32, i32, i64, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @FreeIpCombine(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
