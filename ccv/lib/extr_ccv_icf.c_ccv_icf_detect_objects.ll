; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_icf.c_ccv_icf_detect_objects.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_icf.c_ccv_icf_detect_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }

@_ccv_is_equal_same_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @ccv_icf_detect_objects(i32* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_23__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__**, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_24__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_24__, align 8
  %26 = alloca %struct.TYPE_24__, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_24__, align 8
  %29 = alloca i32, align 4
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  store i64 %3, i64* %30, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32**
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %56, %4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to i32**
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 8, %61
  %63 = trunc i64 %62 to i32
  %64 = call i64 @alloca(i32 %63)
  %65 = inttoptr i64 %64 to %struct.TYPE_25__**
  store %struct.TYPE_25__** %65, %struct.TYPE_25__*** %13, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %76, %59
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = call %struct.TYPE_25__* @ccv_array_new(i32 48, i32 64, i32 0)
  %72 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %13, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %72, i64 %74
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %75, align 8
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %66

79:                                               ; preds = %66
  %80 = load i32, i32* %12, align 4
  switch i32 %80, label %99 [
    i32 129, label %81
    i32 128, label %90
  ]

81:                                               ; preds = %79
  %82 = load i32*, i32** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = bitcast i8* %83 to i32**
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @_ccv_icf_detect_objects_with_classifier_cascade(i32* %82, i32** %84, i32 %85, i64 %88, %struct.TYPE_25__** %86)
  br label %99

90:                                               ; preds = %79
  %91 = load i32*, i32** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = bitcast i8* %92 to i32**
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @_ccv_icf_detect_objects_with_multiscale_classifier_cascade(i32* %91, i32** %93, i32 %94, i64 %97, %struct.TYPE_25__** %95)
  br label %99

99:                                               ; preds = %79, %90, %81
  %100 = call %struct.TYPE_25__* @ccv_array_new(i32 48, i32 64, i32 0)
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %14, align 8
  %101 = call %struct.TYPE_25__* @ccv_array_new(i32 48, i32 64, i32 0)
  store %struct.TYPE_25__* %101, %struct.TYPE_25__** %15, align 8
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %573, %99
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %576

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %133, %110
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %13, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %113, i64 %115
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %112, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %111
  %122 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %13, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %122, i64 %124
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i64 @ccv_array_get(%struct.TYPE_25__* %126, i32 %127)
  %129 = inttoptr i64 %128 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %129, %struct.TYPE_24__** %16, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %132 = call i32 @ccv_array_push(%struct.TYPE_25__* %130, %struct.TYPE_24__* %131)
  br label %133

133:                                              ; preds = %121
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %111

136:                                              ; preds = %111
  br label %566

137:                                              ; preds = %106
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %17, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %139 = call i32 @ccv_array_clear(%struct.TYPE_25__* %138)
  %140 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %13, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %140, i64 %142
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %143, align 8
  %145 = load i32, i32* @_ccv_is_equal_same_class, align 4
  %146 = call i32 @ccv_array_group(%struct.TYPE_25__* %144, %struct.TYPE_25__** %17, i32 %145, i32 0)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %147, 1
  %149 = call i64 @cccalloc(i32 %148, i32 48)
  %150 = inttoptr i64 %149 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %150, %struct.TYPE_24__** %19, align 8
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %231, %137
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %13, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %153, i64 %155
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %152, %159
  br i1 %160, label %161, label %234

161:                                              ; preds = %151
  %162 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %13, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %162, i64 %164
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i64 @ccv_array_get(%struct.TYPE_25__* %166, i32 %167)
  %169 = inttoptr i64 %168 to %struct.TYPE_24__*
  %170 = bitcast %struct.TYPE_24__* %20 to i8*
  %171 = bitcast %struct.TYPE_24__* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 8 %171, i64 48, i1 false)
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i64 @ccv_array_get(%struct.TYPE_25__* %172, i32 %173)
  %175 = inttoptr i64 %174 to i32*
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %21, align 4
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %181 = load i32, i32* %21, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  store i64 %179, i64* %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %190 = load i32, i32* %21, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp sgt i64 %188, %195
  br i1 %196, label %205, label %197

197:                                              ; preds = %161
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %223

205:                                              ; preds = %197, %161
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %207 = load i32, i32* %21, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 2
  %212 = bitcast %struct.TYPE_21__* %210 to i8*
  %213 = bitcast %struct.TYPE_21__* %211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %212, i8* align 8 %213, i64 24, i1 false)
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %218 = load i32, i32* %21, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  store i64 %216, i64* %222, align 8
  br label %223

223:                                              ; preds = %205, %197
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %225 = load i32, i32* %21, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %228, align 8
  br label %231

231:                                              ; preds = %223
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %151

234:                                              ; preds = %151
  store i32 0, i32* %9, align 4
  br label %235

235:                                              ; preds = %260, %234
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %18, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %263

239:                                              ; preds = %235
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %22, align 4
  %247 = load i32, i32* %22, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp sge i64 %248, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %239
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i64 %256
  %258 = call i32 @ccv_array_push(%struct.TYPE_25__* %253, %struct.TYPE_24__* %257)
  br label %259

259:                                              ; preds = %252, %239
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %9, align 4
  br label %235

263:                                              ; preds = %235
  store i32 0, i32* %9, align 4
  br label %264

264:                                              ; preds = %411, %263
  %265 = load i32, i32* %9, align 4
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %414

270:                                              ; preds = %264
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %272 = load i32, i32* %9, align 4
  %273 = call i64 @ccv_array_get(%struct.TYPE_25__* %271, i32 %272)
  %274 = inttoptr i64 %273 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %274, %struct.TYPE_24__** %23, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = call double @ccv_min(i64 %278, i64 %282)
  %284 = fmul double %283, 2.500000e-01
  %285 = fadd double %284, 5.000000e-01
  %286 = fptosi double %285 to i32
  store i32 %286, i32* %24, align 4
  store i32 0, i32* %10, align 4
  br label %287

287:                                              ; preds = %407, %270
  %288 = load i32, i32* %10, align 4
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %288, %291
  br i1 %292, label %293, label %410

293:                                              ; preds = %287
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %295 = load i32, i32* %10, align 4
  %296 = call i64 @ccv_array_get(%struct.TYPE_25__* %294, i32 %295)
  %297 = inttoptr i64 %296 to %struct.TYPE_24__*
  %298 = bitcast %struct.TYPE_24__* %25 to i8*
  %299 = bitcast %struct.TYPE_24__* %297 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %298, i8* align 8 %299, i64 48, i1 false)
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* %10, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %406

303:                                              ; preds = %293
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = call i64 @abs(i64 %306)
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %307, %311
  br i1 %312, label %313, label %406

313:                                              ; preds = %303
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %24, align 4
  %322 = sub nsw i32 %320, %321
  %323 = icmp sge i32 %316, %322
  br i1 %323, label %324, label %406

324:                                              ; preds = %313
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %24, align 4
  %333 = sub nsw i32 %331, %332
  %334 = icmp sge i32 %327, %333
  br i1 %334, label %335, label %406

335:                                              ; preds = %324
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %339, %342
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = sext i32 %347 to i64
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = add nsw i64 %348, %352
  %354 = load i32, i32* %24, align 4
  %355 = sext i32 %354 to i64
  %356 = add nsw i64 %353, %355
  %357 = icmp sle i64 %343, %356
  br i1 %357, label %358, label %406

358:                                              ; preds = %335
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %362, %365
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %371, %375
  %377 = load i32, i32* %24, align 4
  %378 = sext i32 %377 to i64
  %379 = add nsw i64 %376, %378
  %380 = icmp sle i64 %366, %379
  br i1 %380, label %381, label %406

381:                                              ; preds = %358
  %382 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %383 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = icmp sle i64 %385, %388
  br i1 %389, label %390, label %406

390:                                              ; preds = %381
  %391 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %392 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = icmp slt i64 %393, %395
  br i1 %396, label %397, label %406

397:                                              ; preds = %390
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = sub nsw i64 0, %401
  %403 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %404, i32 0, i32 0
  store i64 %402, i64* %405, align 8
  br label %410

406:                                              ; preds = %390, %381, %358, %335, %324, %313, %303, %293
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %10, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %10, align 4
  br label %287

410:                                              ; preds = %397, %287
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %9, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %9, align 4
  br label %264

414:                                              ; preds = %264
  store i32 0, i32* %9, align 4
  br label %415

415:                                              ; preds = %558, %414
  %416 = load i32, i32* %9, align 4
  %417 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %418 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = icmp slt i32 %416, %419
  br i1 %420, label %421, label %561

421:                                              ; preds = %415
  %422 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %423 = load i32, i32* %9, align 4
  %424 = call i64 @ccv_array_get(%struct.TYPE_25__* %422, i32 %423)
  %425 = inttoptr i64 %424 to %struct.TYPE_24__*
  %426 = bitcast %struct.TYPE_24__* %26 to i8*
  %427 = bitcast %struct.TYPE_24__* %425 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %426, i8* align 8 %427, i64 48, i1 false)
  %428 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = icmp sgt i64 %430, 0
  br i1 %431, label %432, label %557

432:                                              ; preds = %421
  store i32 1, i32* %27, align 4
  store i32 0, i32* %10, align 4
  br label %433

433:                                              ; preds = %547, %432
  %434 = load i32, i32* %10, align 4
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %436 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = icmp slt i32 %434, %437
  br i1 %438, label %439, label %550

439:                                              ; preds = %433
  %440 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %441 = load i32, i32* %10, align 4
  %442 = call i64 @ccv_array_get(%struct.TYPE_25__* %440, i32 %441)
  %443 = inttoptr i64 %442 to %struct.TYPE_24__*
  %444 = bitcast %struct.TYPE_24__* %28 to i8*
  %445 = bitcast %struct.TYPE_24__* %443 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %444, i8* align 8 %445, i64 48, i1 false)
  %446 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = call double @ccv_min(i64 %448, i64 %451)
  %453 = fmul double %452, 2.500000e-01
  %454 = fadd double %453, 5.000000e-01
  %455 = fptosi double %454 to i32
  store i32 %455, i32* %29, align 4
  %456 = load i32, i32* %9, align 4
  %457 = load i32, i32* %10, align 4
  %458 = icmp ne i32 %456, %457
  br i1 %458, label %459, label %546

459:                                              ; preds = %439
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = call i64 @abs(i64 %462)
  %464 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = call i64 @abs(i64 %466)
  %468 = icmp eq i64 %463, %467
  br i1 %468, label %469, label %546

469:                                              ; preds = %459
  %470 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* %29, align 4
  %477 = sub nsw i32 %475, %476
  %478 = icmp sge i32 %472, %477
  br i1 %478, label %479, label %546

479:                                              ; preds = %469
  %480 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 4
  %483 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %29, align 4
  %487 = sub nsw i32 %485, %486
  %488 = icmp sge i32 %482, %487
  br i1 %488, label %489, label %546

489:                                              ; preds = %479
  %490 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  %495 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = add nsw i64 %493, %496
  %498 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 8
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %503 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = add nsw i64 %501, %504
  %506 = load i32, i32* %29, align 4
  %507 = sext i32 %506 to i64
  %508 = add nsw i64 %505, %507
  %509 = icmp sle i64 %497, %508
  br i1 %509, label %510, label %546

510:                                              ; preds = %489
  %511 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %511, i32 0, i32 3
  %513 = load i32, i32* %512, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  %518 = add nsw i64 %514, %517
  %519 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %519, i32 0, i32 3
  %521 = load i32, i32* %520, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %523, i32 0, i32 1
  %525 = load i64, i64* %524, align 8
  %526 = add nsw i64 %522, %525
  %527 = load i32, i32* %29, align 4
  %528 = sext i32 %527 to i64
  %529 = add nsw i64 %526, %528
  %530 = icmp sle i64 %518, %529
  br i1 %530, label %531, label %546

531:                                              ; preds = %510
  %532 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %532, i32 0, i32 1
  %534 = load i64, i64* %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %535, i32 0, i32 1
  %537 = load i64, i64* %536, align 8
  %538 = icmp sgt i64 %534, %537
  br i1 %538, label %545, label %539

539:                                              ; preds = %531
  %540 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %541 = load i64, i64* %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = icmp sge i64 %541, %543
  br i1 %544, label %545, label %546

545:                                              ; preds = %539, %531
  store i32 0, i32* %27, align 4
  br label %550

546:                                              ; preds = %539, %510, %489, %479, %469, %459, %439
  br label %547

547:                                              ; preds = %546
  %548 = load i32, i32* %10, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %10, align 4
  br label %433

550:                                              ; preds = %545, %433
  %551 = load i32, i32* %27, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %550
  %554 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %555 = call i32 @ccv_array_push(%struct.TYPE_25__* %554, %struct.TYPE_24__* %26)
  br label %556

556:                                              ; preds = %553, %550
  br label %557

557:                                              ; preds = %556, %421
  br label %558

558:                                              ; preds = %557
  %559 = load i32, i32* %9, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %9, align 4
  br label %415

561:                                              ; preds = %415
  %562 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %563 = call i32 @ccv_array_free(%struct.TYPE_25__* %562)
  %564 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %565 = call i32 @ccfree(%struct.TYPE_24__* %564)
  br label %566

566:                                              ; preds = %561, %136
  %567 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %13, align 8
  %568 = load i32, i32* %11, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %567, i64 %569
  %571 = load %struct.TYPE_25__*, %struct.TYPE_25__** %570, align 8
  %572 = call i32 @ccv_array_free(%struct.TYPE_25__* %571)
  br label %573

573:                                              ; preds = %566
  %574 = load i32, i32* %11, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %11, align 4
  br label %102

576:                                              ; preds = %102
  %577 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %578 = call i32 @ccv_array_free(%struct.TYPE_25__* %577)
  %579 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  ret %struct.TYPE_25__* %579
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local %struct.TYPE_25__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @_ccv_icf_detect_objects_with_classifier_cascade(i32*, i32**, i32, i64, %struct.TYPE_25__**) #1

declare dso_local i32 @_ccv_icf_detect_objects_with_multiscale_classifier_cascade(i32*, i32**, i32, i64, %struct.TYPE_25__**) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ccv_array_clear(%struct.TYPE_25__*) #1

declare dso_local i32 @ccv_array_group(%struct.TYPE_25__*, %struct.TYPE_25__**, i32, i32) #1

declare dso_local i64 @cccalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local double @ccv_min(i64, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_25__*) #1

declare dso_local i32 @ccfree(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
