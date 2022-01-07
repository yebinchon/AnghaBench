; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_update_filter.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_update_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64*, i8**, i32, i8*, i8** }

@quality_map = common dso_local global %struct.TYPE_5__* null, align 8
@resampler_basic_direct_double = common dso_local global i8* null, align 8
@resampler_basic_direct_single = common dso_local global i8* null, align 8
@resampler_basic_interpolate_double = common dso_local global i8* null, align 8
@resampler_basic_interpolate_single = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @update_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_filter(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @quality_map, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @quality_map, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %145

44:                                               ; preds = %1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @quality_map, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %55, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %64, %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %69, %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = and i64 %79, -4
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 2, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %44
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %89, %44
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 4, %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %103, %94
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 8, %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = ashr i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %117, %108
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 16, %125
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = ashr i32 %134, 1
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %131, %122
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %136
  br label %155

145:                                              ; preds = %1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** @quality_map, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %145, %144
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp sle i32 %158, %161
  br i1 %162, label %163, label %306

163:                                              ; preds = %155
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 17
  %166 = load i8**, i8*** %165, align 8
  %167 = icmp ne i8** %166, null
  br i1 %167, label %183, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 %171, %175
  %177 = mul i64 %176, 8
  %178 = trunc i64 %177 to i32
  %179 = call i64 @speex_alloc(i32 %178)
  %180 = inttoptr i64 %179 to i8**
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 17
  store i8** %180, i8*** %182, align 8
  br label %227

183:                                              ; preds = %163
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 %190, %194
  %196 = icmp ult i64 %187, %195
  br i1 %196, label %197, label %226

197:                                              ; preds = %183
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 17
  %200 = load i8**, i8*** %199, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = mul i64 %203, %207
  %209 = mul i64 %208, 8
  %210 = trunc i64 %209 to i32
  %211 = call i64 @speex_realloc(i8** %200, i32 %210)
  %212 = inttoptr i64 %211 to i8**
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 17
  store i8** %212, i8*** %214, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 %217, %221
  %223 = trunc i64 %222 to i32
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 6
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %197, %183
  br label %227

227:                                              ; preds = %226, %168
  store i64 0, i64* %4, align 8
  br label %228

228:                                              ; preds = %289, %227
  %229 = load i64, i64* %4, align 8
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp ult i64 %229, %233
  br i1 %234, label %235, label %292

235:                                              ; preds = %228
  store i64 0, i64* %5, align 8
  br label %236

236:                                              ; preds = %285, %235
  %237 = load i64, i64* %5, align 8
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ult i64 %237, %240
  br i1 %241, label %242, label %288

242:                                              ; preds = %236
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = load i64, i64* %5, align 8
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = udiv i64 %249, 2
  %251 = sub i64 %246, %250
  %252 = add i64 %251, 1
  %253 = uitofp i64 %252 to float
  %254 = load i64, i64* %4, align 8
  %255 = uitofp i64 %254 to float
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = sitofp i32 %258 to float
  %260 = fdiv float %255, %259
  %261 = fsub float %253, %260
  %262 = fptoui float %261 to i64
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** @quality_map, align 8
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = call i8* @sinc(i32 %245, i64 %262, i64 %265, i32 %272)
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 17
  %276 = load i8**, i8*** %275, align 8
  %277 = load i64, i64* %4, align 8
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = mul i64 %277, %280
  %282 = load i64, i64* %5, align 8
  %283 = add i64 %281, %282
  %284 = getelementptr inbounds i8*, i8** %276, i64 %283
  store i8* %273, i8** %284, align 8
  br label %285

285:                                              ; preds = %242
  %286 = load i64, i64* %5, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %5, align 8
  br label %236

288:                                              ; preds = %236
  br label %289

289:                                              ; preds = %288
  %290 = load i64, i64* %4, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %4, align 8
  br label %228

292:                                              ; preds = %228
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = icmp ugt i64 %295, 8
  br i1 %296, label %297, label %301

297:                                              ; preds = %292
  %298 = load i8*, i8** @resampler_basic_direct_double, align 8
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 16
  store i8* %298, i8** %300, align 8
  br label %305

301:                                              ; preds = %292
  %302 = load i8*, i8** @resampler_basic_direct_single, align 8
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 16
  store i8* %302, i8** %304, align 8
  br label %305

305:                                              ; preds = %301, %297
  br label %439

306:                                              ; preds = %155
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 17
  %309 = load i8**, i8*** %308, align 8
  %310 = icmp ne i8** %309, null
  br i1 %310, label %327, label %311

311:                                              ; preds = %306
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = mul i64 %314, %318
  %320 = add i64 %319, 8
  %321 = mul i64 %320, 8
  %322 = trunc i64 %321 to i32
  %323 = call i64 @speex_alloc(i32 %322)
  %324 = inttoptr i64 %323 to i8**
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 17
  store i8** %324, i8*** %326, align 8
  br label %374

327:                                              ; preds = %306
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = mul i64 %334, %338
  %340 = add i64 %339, 8
  %341 = icmp ult i64 %331, %340
  br i1 %341, label %342, label %373

342:                                              ; preds = %327
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 17
  %345 = load i8**, i8*** %344, align 8
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = mul i64 %348, %352
  %354 = add i64 %353, 8
  %355 = mul i64 %354, 8
  %356 = trunc i64 %355 to i32
  %357 = call i64 @speex_realloc(i8** %345, i32 %356)
  %358 = inttoptr i64 %357 to i8**
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 17
  store i8** %358, i8*** %360, align 8
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = sext i32 %366 to i64
  %368 = mul i64 %363, %367
  %369 = add i64 %368, 8
  %370 = trunc i64 %369 to i32
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 6
  store i32 %370, i32* %372, align 4
  br label %373

373:                                              ; preds = %342, %327
  br label %374

374:                                              ; preds = %373, %311
  store i64 -4, i64* %6, align 8
  br label %375

375:                                              ; preds = %422, %374
  %376 = load i64, i64* %6, align 8
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = sext i32 %379 to i64
  %381 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = mul i64 %380, %383
  %385 = add i64 %384, 4
  %386 = icmp ult i64 %376, %385
  br i1 %386, label %387, label %425

387:                                              ; preds = %375
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 5
  %390 = load i32, i32* %389, align 8
  %391 = load i64, i64* %6, align 8
  %392 = uitofp i64 %391 to float
  %393 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = sitofp i32 %395 to float
  %397 = fdiv float %392, %396
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = udiv i64 %400, 2
  %402 = uitofp i64 %401 to float
  %403 = fsub float %397, %402
  %404 = fptoui float %403 to i64
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** @quality_map, align 8
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = call i8* @sinc(i32 %390, i64 %404, i64 %407, i32 %414)
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 17
  %418 = load i8**, i8*** %417, align 8
  %419 = load i64, i64* %6, align 8
  %420 = add i64 %419, 4
  %421 = getelementptr inbounds i8*, i8** %418, i64 %420
  store i8* %415, i8** %421, align 8
  br label %422

422:                                              ; preds = %387
  %423 = load i64, i64* %6, align 8
  %424 = add i64 %423, 1
  store i64 %424, i64* %6, align 8
  br label %375

425:                                              ; preds = %375
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 2
  %428 = load i64, i64* %427, align 8
  %429 = icmp ugt i64 %428, 8
  br i1 %429, label %430, label %434

430:                                              ; preds = %425
  %431 = load i8*, i8** @resampler_basic_interpolate_double, align 8
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 16
  store i8* %431, i8** %433, align 8
  br label %438

434:                                              ; preds = %425
  %435 = load i8*, i8** @resampler_basic_interpolate_single, align 8
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 16
  store i8* %435, i8** %437, align 8
  br label %438

438:                                              ; preds = %434, %430
  br label %439

439:                                              ; preds = %438, %305
  %440 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 4
  %446 = sdiv i32 %442, %445
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 7
  store i32 %446, i32* %448, align 8
  %449 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 4
  %454 = load i32, i32* %453, align 4
  %455 = srem i32 %451, %454
  %456 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %457 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %456, i32 0, i32 8
  store i32 %455, i32* %457, align 4
  %458 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 14
  %460 = load i8**, i8*** %459, align 8
  %461 = icmp ne i8** %460, null
  br i1 %461, label %510, label %462

462:                                              ; preds = %439
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = sub i64 %465, 1
  %467 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 10
  %469 = load i32, i32* %468, align 4
  %470 = sext i32 %469 to i64
  %471 = add i64 %466, %470
  %472 = trunc i64 %471 to i32
  %473 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 9
  store i32 %472, i32* %474, align 8
  %475 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 11
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 9
  %480 = load i32, i32* %479, align 8
  %481 = mul nsw i32 %477, %480
  %482 = sext i32 %481 to i64
  %483 = mul i64 %482, 8
  %484 = trunc i64 %483 to i32
  %485 = call i64 @speex_alloc(i32 %484)
  %486 = inttoptr i64 %485 to i8**
  %487 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 14
  store i8** %486, i8*** %488, align 8
  store i64 0, i64* %7, align 8
  br label %489

489:                                              ; preds = %506, %462
  %490 = load i64, i64* %7, align 8
  %491 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 11
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %495 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %494, i32 0, i32 9
  %496 = load i32, i32* %495, align 8
  %497 = mul nsw i32 %493, %496
  %498 = sext i32 %497 to i64
  %499 = icmp ult i64 %490, %498
  br i1 %499, label %500, label %509

500:                                              ; preds = %489
  %501 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %502 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %501, i32 0, i32 14
  %503 = load i8**, i8*** %502, align 8
  %504 = load i64, i64* %7, align 8
  %505 = getelementptr inbounds i8*, i8** %503, i64 %504
  store i8* null, i8** %505, align 8
  br label %506

506:                                              ; preds = %500
  %507 = load i64, i64* %7, align 8
  %508 = add i64 %507, 1
  store i64 %508, i64* %7, align 8
  br label %489

509:                                              ; preds = %489
  br label %990

510:                                              ; preds = %439
  %511 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 15
  %513 = load i32, i32* %512, align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %566, label %515

515:                                              ; preds = %510
  %516 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %517 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = sub i64 %518, 1
  %520 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %521 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %520, i32 0, i32 10
  %522 = load i32, i32* %521, align 4
  %523 = sext i32 %522 to i64
  %524 = add i64 %519, %523
  %525 = trunc i64 %524 to i32
  %526 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %527 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %526, i32 0, i32 9
  store i32 %525, i32* %527, align 8
  %528 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 14
  %530 = load i8**, i8*** %529, align 8
  %531 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %532 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %531, i32 0, i32 11
  %533 = load i32, i32* %532, align 8
  %534 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %535 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %534, i32 0, i32 9
  %536 = load i32, i32* %535, align 8
  %537 = mul nsw i32 %533, %536
  %538 = sext i32 %537 to i64
  %539 = mul i64 %538, 8
  %540 = trunc i64 %539 to i32
  %541 = call i64 @speex_realloc(i8** %530, i32 %540)
  %542 = inttoptr i64 %541 to i8**
  %543 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %544 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %543, i32 0, i32 14
  store i8** %542, i8*** %544, align 8
  store i64 0, i64* %8, align 8
  br label %545

545:                                              ; preds = %562, %515
  %546 = load i64, i64* %8, align 8
  %547 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %548 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %547, i32 0, i32 11
  %549 = load i32, i32* %548, align 8
  %550 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %551 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %550, i32 0, i32 9
  %552 = load i32, i32* %551, align 8
  %553 = mul nsw i32 %549, %552
  %554 = sext i32 %553 to i64
  %555 = icmp ult i64 %546, %554
  br i1 %555, label %556, label %565

556:                                              ; preds = %545
  %557 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 14
  %559 = load i8**, i8*** %558, align 8
  %560 = load i64, i64* %8, align 8
  %561 = getelementptr inbounds i8*, i8** %559, i64 %560
  store i8* null, i8** %561, align 8
  br label %562

562:                                              ; preds = %556
  %563 = load i64, i64* %8, align 8
  %564 = add i64 %563, 1
  store i64 %564, i64* %8, align 8
  br label %545

565:                                              ; preds = %545
  br label %989

566:                                              ; preds = %510
  %567 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %568 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = load i64, i64* %3, align 8
  %571 = icmp ugt i64 %569, %570
  br i1 %571, label %572, label %884

572:                                              ; preds = %566
  %573 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %574 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %573, i32 0, i32 9
  %575 = load i32, i32* %574, align 8
  store i32 %575, i32* %10, align 4
  %576 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %577 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %576, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = sub i64 %578, 1
  %580 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %581 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %580, i32 0, i32 10
  %582 = load i32, i32* %581, align 4
  %583 = sext i32 %582 to i64
  %584 = add i64 %579, %583
  %585 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %585, i32 0, i32 9
  %587 = load i32, i32* %586, align 8
  %588 = sext i32 %587 to i64
  %589 = icmp ugt i64 %584, %588
  br i1 %589, label %590, label %620

590:                                              ; preds = %572
  %591 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %592 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %591, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = sub i64 %593, 1
  %595 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %596 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %595, i32 0, i32 10
  %597 = load i32, i32* %596, align 4
  %598 = sext i32 %597 to i64
  %599 = add i64 %594, %598
  %600 = trunc i64 %599 to i32
  %601 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %602 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %601, i32 0, i32 9
  store i32 %600, i32* %602, align 8
  %603 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %604 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %603, i32 0, i32 14
  %605 = load i8**, i8*** %604, align 8
  %606 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %607 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %606, i32 0, i32 11
  %608 = load i32, i32* %607, align 8
  %609 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %610 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %609, i32 0, i32 9
  %611 = load i32, i32* %610, align 8
  %612 = mul nsw i32 %608, %611
  %613 = sext i32 %612 to i64
  %614 = mul i64 %613, 8
  %615 = trunc i64 %614 to i32
  %616 = call i64 @speex_realloc(i8** %605, i32 %615)
  %617 = inttoptr i64 %616 to i8**
  %618 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %619 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %618, i32 0, i32 14
  store i8** %617, i8*** %619, align 8
  br label %620

620:                                              ; preds = %590, %572
  %621 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %622 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %621, i32 0, i32 11
  %623 = load i32, i32* %622, align 8
  %624 = sub nsw i32 %623, 1
  %625 = sext i32 %624 to i64
  store i64 %625, i64* %9, align 8
  br label %626

626:                                              ; preds = %880, %620
  %627 = load i64, i64* %9, align 8
  %628 = icmp uge i64 %627, 0
  br i1 %628, label %629, label %883

629:                                              ; preds = %626
  %630 = load i64, i64* %3, align 8
  store i64 %630, i64* %12, align 8
  %631 = load i64, i64* %3, align 8
  %632 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %633 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %632, i32 0, i32 12
  %634 = load i32*, i32** %633, align 8
  %635 = load i64, i64* %9, align 8
  %636 = getelementptr inbounds i32, i32* %634, i64 %635
  %637 = load i32, i32* %636, align 4
  %638 = mul nsw i32 2, %637
  %639 = sext i32 %638 to i64
  %640 = add i64 %631, %639
  store i64 %640, i64* %12, align 8
  %641 = load i64, i64* %3, align 8
  %642 = sub i64 %641, 2
  %643 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %644 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %643, i32 0, i32 12
  %645 = load i32*, i32** %644, align 8
  %646 = load i64, i64* %9, align 8
  %647 = getelementptr inbounds i32, i32* %645, i64 %646
  %648 = load i32, i32* %647, align 4
  %649 = sext i32 %648 to i64
  %650 = add i64 %642, %649
  store i64 %650, i64* %11, align 8
  br label %651

651:                                              ; preds = %686, %629
  %652 = load i64, i64* %11, align 8
  %653 = icmp uge i64 %652, 0
  br i1 %653, label %654, label %689

654:                                              ; preds = %651
  %655 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %656 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %655, i32 0, i32 14
  %657 = load i8**, i8*** %656, align 8
  %658 = load i64, i64* %9, align 8
  %659 = load i32, i32* %10, align 4
  %660 = sext i32 %659 to i64
  %661 = mul i64 %658, %660
  %662 = load i64, i64* %11, align 8
  %663 = add i64 %661, %662
  %664 = getelementptr inbounds i8*, i8** %657, i64 %663
  %665 = load i8*, i8** %664, align 8
  %666 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %667 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %666, i32 0, i32 14
  %668 = load i8**, i8*** %667, align 8
  %669 = load i64, i64* %9, align 8
  %670 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %671 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %670, i32 0, i32 9
  %672 = load i32, i32* %671, align 8
  %673 = sext i32 %672 to i64
  %674 = mul i64 %669, %673
  %675 = load i64, i64* %11, align 8
  %676 = add i64 %674, %675
  %677 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %678 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %677, i32 0, i32 12
  %679 = load i32*, i32** %678, align 8
  %680 = load i64, i64* %9, align 8
  %681 = getelementptr inbounds i32, i32* %679, i64 %680
  %682 = load i32, i32* %681, align 4
  %683 = sext i32 %682 to i64
  %684 = add i64 %676, %683
  %685 = getelementptr inbounds i8*, i8** %668, i64 %684
  store i8* %665, i8** %685, align 8
  br label %686

686:                                              ; preds = %654
  %687 = load i64, i64* %11, align 8
  %688 = add i64 %687, -1
  store i64 %688, i64* %11, align 8
  br label %651

689:                                              ; preds = %651
  store i64 0, i64* %11, align 8
  br label %690

690:                                              ; preds = %713, %689
  %691 = load i64, i64* %11, align 8
  %692 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %693 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %692, i32 0, i32 12
  %694 = load i32*, i32** %693, align 8
  %695 = load i64, i64* %9, align 8
  %696 = getelementptr inbounds i32, i32* %694, i64 %695
  %697 = load i32, i32* %696, align 4
  %698 = sext i32 %697 to i64
  %699 = icmp ult i64 %691, %698
  br i1 %699, label %700, label %716

700:                                              ; preds = %690
  %701 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %702 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %701, i32 0, i32 14
  %703 = load i8**, i8*** %702, align 8
  %704 = load i64, i64* %9, align 8
  %705 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %706 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %705, i32 0, i32 9
  %707 = load i32, i32* %706, align 8
  %708 = sext i32 %707 to i64
  %709 = mul i64 %704, %708
  %710 = load i64, i64* %11, align 8
  %711 = add i64 %709, %710
  %712 = getelementptr inbounds i8*, i8** %703, i64 %711
  store i8* null, i8** %712, align 8
  br label %713

713:                                              ; preds = %700
  %714 = load i64, i64* %11, align 8
  %715 = add i64 %714, 1
  store i64 %715, i64* %11, align 8
  br label %690

716:                                              ; preds = %690
  %717 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %718 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %717, i32 0, i32 12
  %719 = load i32*, i32** %718, align 8
  %720 = load i64, i64* %9, align 8
  %721 = getelementptr inbounds i32, i32* %719, i64 %720
  store i32 0, i32* %721, align 4
  %722 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %723 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %722, i32 0, i32 0
  %724 = load i64, i64* %723, align 8
  %725 = load i64, i64* %12, align 8
  %726 = icmp ugt i64 %724, %725
  br i1 %726, label %727, label %813

727:                                              ; preds = %716
  store i64 0, i64* %11, align 8
  br label %728

728:                                              ; preds = %767, %727
  %729 = load i64, i64* %11, align 8
  %730 = load i64, i64* %12, align 8
  %731 = sub i64 %730, 1
  %732 = icmp ult i64 %729, %731
  br i1 %732, label %733, label %770

733:                                              ; preds = %728
  %734 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %735 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %734, i32 0, i32 14
  %736 = load i8**, i8*** %735, align 8
  %737 = load i64, i64* %9, align 8
  %738 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %739 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %738, i32 0, i32 9
  %740 = load i32, i32* %739, align 8
  %741 = sext i32 %740 to i64
  %742 = mul i64 %737, %741
  %743 = load i64, i64* %12, align 8
  %744 = sub i64 %743, 2
  %745 = load i64, i64* %11, align 8
  %746 = sub i64 %744, %745
  %747 = add i64 %742, %746
  %748 = getelementptr inbounds i8*, i8** %736, i64 %747
  %749 = load i8*, i8** %748, align 8
  %750 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %751 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %750, i32 0, i32 14
  %752 = load i8**, i8*** %751, align 8
  %753 = load i64, i64* %9, align 8
  %754 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %755 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %754, i32 0, i32 9
  %756 = load i32, i32* %755, align 8
  %757 = sext i32 %756 to i64
  %758 = mul i64 %753, %757
  %759 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %760 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %759, i32 0, i32 0
  %761 = load i64, i64* %760, align 8
  %762 = sub i64 %761, 2
  %763 = load i64, i64* %11, align 8
  %764 = sub i64 %762, %763
  %765 = add i64 %758, %764
  %766 = getelementptr inbounds i8*, i8** %752, i64 %765
  store i8* %749, i8** %766, align 8
  br label %767

767:                                              ; preds = %733
  %768 = load i64, i64* %11, align 8
  %769 = add i64 %768, 1
  store i64 %769, i64* %11, align 8
  br label %728

770:                                              ; preds = %728
  br label %771

771:                                              ; preds = %796, %770
  %772 = load i64, i64* %11, align 8
  %773 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %774 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %773, i32 0, i32 0
  %775 = load i64, i64* %774, align 8
  %776 = sub i64 %775, 1
  %777 = icmp ult i64 %772, %776
  br i1 %777, label %778, label %799

778:                                              ; preds = %771
  %779 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %780 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %779, i32 0, i32 14
  %781 = load i8**, i8*** %780, align 8
  %782 = load i64, i64* %9, align 8
  %783 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %784 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %783, i32 0, i32 9
  %785 = load i32, i32* %784, align 8
  %786 = sext i32 %785 to i64
  %787 = mul i64 %782, %786
  %788 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %789 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %788, i32 0, i32 0
  %790 = load i64, i64* %789, align 8
  %791 = sub i64 %790, 2
  %792 = load i64, i64* %11, align 8
  %793 = sub i64 %791, %792
  %794 = add i64 %787, %793
  %795 = getelementptr inbounds i8*, i8** %781, i64 %794
  store i8* null, i8** %795, align 8
  br label %796

796:                                              ; preds = %778
  %797 = load i64, i64* %11, align 8
  %798 = add i64 %797, 1
  store i64 %798, i64* %11, align 8
  br label %771

799:                                              ; preds = %771
  %800 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %801 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %800, i32 0, i32 0
  %802 = load i64, i64* %801, align 8
  %803 = load i64, i64* %12, align 8
  %804 = sub i64 %802, %803
  %805 = udiv i64 %804, 2
  %806 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %807 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %806, i32 0, i32 13
  %808 = load i64*, i64** %807, align 8
  %809 = load i64, i64* %9, align 8
  %810 = getelementptr inbounds i64, i64* %808, i64 %809
  %811 = load i64, i64* %810, align 8
  %812 = add i64 %811, %805
  store i64 %812, i64* %810, align 8
  br label %879

813:                                              ; preds = %716
  %814 = load i64, i64* %12, align 8
  %815 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %816 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %815, i32 0, i32 0
  %817 = load i64, i64* %816, align 8
  %818 = sub i64 %814, %817
  %819 = udiv i64 %818, 2
  %820 = trunc i64 %819 to i32
  %821 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %822 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %821, i32 0, i32 12
  %823 = load i32*, i32** %822, align 8
  %824 = load i64, i64* %9, align 8
  %825 = getelementptr inbounds i32, i32* %823, i64 %824
  store i32 %820, i32* %825, align 4
  store i64 0, i64* %11, align 8
  br label %826

826:                                              ; preds = %875, %813
  %827 = load i64, i64* %11, align 8
  %828 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %829 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %828, i32 0, i32 0
  %830 = load i64, i64* %829, align 8
  %831 = sub i64 %830, 1
  %832 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %833 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %832, i32 0, i32 12
  %834 = load i32*, i32** %833, align 8
  %835 = load i64, i64* %9, align 8
  %836 = getelementptr inbounds i32, i32* %834, i64 %835
  %837 = load i32, i32* %836, align 4
  %838 = sext i32 %837 to i64
  %839 = add i64 %831, %838
  %840 = icmp ult i64 %827, %839
  br i1 %840, label %841, label %878

841:                                              ; preds = %826
  %842 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %843 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %842, i32 0, i32 14
  %844 = load i8**, i8*** %843, align 8
  %845 = load i64, i64* %9, align 8
  %846 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %847 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %846, i32 0, i32 9
  %848 = load i32, i32* %847, align 8
  %849 = sext i32 %848 to i64
  %850 = mul i64 %845, %849
  %851 = load i64, i64* %11, align 8
  %852 = add i64 %850, %851
  %853 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %854 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %853, i32 0, i32 12
  %855 = load i32*, i32** %854, align 8
  %856 = load i64, i64* %9, align 8
  %857 = getelementptr inbounds i32, i32* %855, i64 %856
  %858 = load i32, i32* %857, align 4
  %859 = sext i32 %858 to i64
  %860 = add i64 %852, %859
  %861 = getelementptr inbounds i8*, i8** %844, i64 %860
  %862 = load i8*, i8** %861, align 8
  %863 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %864 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %863, i32 0, i32 14
  %865 = load i8**, i8*** %864, align 8
  %866 = load i64, i64* %9, align 8
  %867 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %868 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %867, i32 0, i32 9
  %869 = load i32, i32* %868, align 8
  %870 = sext i32 %869 to i64
  %871 = mul i64 %866, %870
  %872 = load i64, i64* %11, align 8
  %873 = add i64 %871, %872
  %874 = getelementptr inbounds i8*, i8** %865, i64 %873
  store i8* %862, i8** %874, align 8
  br label %875

875:                                              ; preds = %841
  %876 = load i64, i64* %11, align 8
  %877 = add i64 %876, 1
  store i64 %877, i64* %11, align 8
  br label %826

878:                                              ; preds = %826
  br label %879

879:                                              ; preds = %878, %799
  br label %880

880:                                              ; preds = %879
  %881 = load i64, i64* %9, align 8
  %882 = add i64 %881, -1
  store i64 %882, i64* %9, align 8
  br label %626

883:                                              ; preds = %626
  br label %988

884:                                              ; preds = %566
  %885 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %886 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %885, i32 0, i32 0
  %887 = load i64, i64* %886, align 8
  %888 = load i64, i64* %3, align 8
  %889 = icmp ult i64 %887, %888
  br i1 %889, label %890, label %987

890:                                              ; preds = %884
  store i64 0, i64* %13, align 8
  br label %891

891:                                              ; preds = %983, %890
  %892 = load i64, i64* %13, align 8
  %893 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %894 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %893, i32 0, i32 11
  %895 = load i32, i32* %894, align 8
  %896 = sext i32 %895 to i64
  %897 = icmp ult i64 %892, %896
  br i1 %897, label %898, label %986

898:                                              ; preds = %891
  %899 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %900 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %899, i32 0, i32 12
  %901 = load i32*, i32** %900, align 8
  %902 = load i64, i64* %13, align 8
  %903 = getelementptr inbounds i32, i32* %901, i64 %902
  %904 = load i32, i32* %903, align 4
  %905 = sext i32 %904 to i64
  store i64 %905, i64* %15, align 8
  %906 = load i64, i64* %3, align 8
  %907 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %908 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %907, i32 0, i32 0
  %909 = load i64, i64* %908, align 8
  %910 = sub i64 %906, %909
  %911 = udiv i64 %910, 2
  %912 = trunc i64 %911 to i32
  %913 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %914 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %913, i32 0, i32 12
  %915 = load i32*, i32** %914, align 8
  %916 = load i64, i64* %13, align 8
  %917 = getelementptr inbounds i32, i32* %915, i64 %916
  store i32 %912, i32* %917, align 4
  store i64 0, i64* %14, align 8
  br label %918

918:                                              ; preds = %969, %898
  %919 = load i64, i64* %14, align 8
  %920 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %921 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %920, i32 0, i32 0
  %922 = load i64, i64* %921, align 8
  %923 = sub i64 %922, 1
  %924 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %925 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %924, i32 0, i32 12
  %926 = load i32*, i32** %925, align 8
  %927 = load i64, i64* %13, align 8
  %928 = getelementptr inbounds i32, i32* %926, i64 %927
  %929 = load i32, i32* %928, align 4
  %930 = sext i32 %929 to i64
  %931 = add i64 %923, %930
  %932 = load i64, i64* %15, align 8
  %933 = add i64 %931, %932
  %934 = icmp ult i64 %919, %933
  br i1 %934, label %935, label %972

935:                                              ; preds = %918
  %936 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %937 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %936, i32 0, i32 14
  %938 = load i8**, i8*** %937, align 8
  %939 = load i64, i64* %13, align 8
  %940 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %941 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %940, i32 0, i32 9
  %942 = load i32, i32* %941, align 8
  %943 = sext i32 %942 to i64
  %944 = mul i64 %939, %943
  %945 = load i64, i64* %14, align 8
  %946 = add i64 %944, %945
  %947 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %948 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %947, i32 0, i32 12
  %949 = load i32*, i32** %948, align 8
  %950 = load i64, i64* %13, align 8
  %951 = getelementptr inbounds i32, i32* %949, i64 %950
  %952 = load i32, i32* %951, align 4
  %953 = sext i32 %952 to i64
  %954 = add i64 %946, %953
  %955 = getelementptr inbounds i8*, i8** %938, i64 %954
  %956 = load i8*, i8** %955, align 8
  %957 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %958 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %957, i32 0, i32 14
  %959 = load i8**, i8*** %958, align 8
  %960 = load i64, i64* %13, align 8
  %961 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %962 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %961, i32 0, i32 9
  %963 = load i32, i32* %962, align 8
  %964 = sext i32 %963 to i64
  %965 = mul i64 %960, %964
  %966 = load i64, i64* %14, align 8
  %967 = add i64 %965, %966
  %968 = getelementptr inbounds i8*, i8** %959, i64 %967
  store i8* %956, i8** %968, align 8
  br label %969

969:                                              ; preds = %935
  %970 = load i64, i64* %14, align 8
  %971 = add i64 %970, 1
  store i64 %971, i64* %14, align 8
  br label %918

972:                                              ; preds = %918
  %973 = load i64, i64* %15, align 8
  %974 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %975 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %974, i32 0, i32 12
  %976 = load i32*, i32** %975, align 8
  %977 = load i64, i64* %13, align 8
  %978 = getelementptr inbounds i32, i32* %976, i64 %977
  %979 = load i32, i32* %978, align 4
  %980 = sext i32 %979 to i64
  %981 = add i64 %980, %973
  %982 = trunc i64 %981 to i32
  store i32 %982, i32* %978, align 4
  br label %983

983:                                              ; preds = %972
  %984 = load i64, i64* %13, align 8
  %985 = add i64 %984, 1
  store i64 %985, i64* %13, align 8
  br label %891

986:                                              ; preds = %891
  br label %987

987:                                              ; preds = %986, %884
  br label %988

988:                                              ; preds = %987, %883
  br label %989

989:                                              ; preds = %988, %565
  br label %990

990:                                              ; preds = %989, %509
  ret void
}

declare dso_local i64 @speex_alloc(i32) #1

declare dso_local i64 @speex_realloc(i8**, i32) #1

declare dso_local i8* @sinc(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
