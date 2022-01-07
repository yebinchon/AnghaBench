; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_module_load_mod.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_module_load_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.instrument*, %struct.pattern*, i32 }
%struct.instrument = type { i32, i32, %struct.sample* }
%struct.sample = type { i32, i32, i32, i32, i16* }
%struct.pattern = type { i32, i32, i8* }
%struct.data = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"MOD Format not recognised!\00", align 1
@FP_SHIFT = common dso_local global i32 0, align 4
@FP_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.module* (%struct.data*, i8*)* @module_load_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.module* @module_load_mod(%struct.data* %0, i8* %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.instrument*, align 8
  %22 = alloca %struct.sample*, align 8
  %23 = alloca %struct.module*, align 8
  store %struct.data* %0, %struct.data** %4, align 8
  store i8* %1, i8** %5, align 8
  %24 = call i64 @calloc(i32 1, i32 88)
  %25 = inttoptr i64 %24 to %struct.module*
  store %struct.module* %25, %struct.module** %23, align 8
  %26 = load %struct.module*, %struct.module** %23, align 8
  %27 = icmp ne %struct.module* %26, null
  br i1 %27, label %28, label %571

28:                                               ; preds = %2
  %29 = load %struct.data*, %struct.data** %4, align 8
  %30 = load %struct.module*, %struct.module** %23, align 8
  %31 = getelementptr inbounds %struct.module, %struct.module* %30, i32 0, i32 14
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @data_ascii(%struct.data* %29, i32 0, i32 20, i32 %32)
  %34 = load %struct.data*, %struct.data** %4, align 8
  %35 = call i32 @data_u8(%struct.data* %34, i32 950)
  %36 = and i32 %35, 127
  %37 = load %struct.module*, %struct.module** %23, align 8
  %38 = getelementptr inbounds %struct.module, %struct.module* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.data*, %struct.data** %4, align 8
  %40 = call i32 @data_u8(%struct.data* %39, i32 951)
  %41 = and i32 %40, 127
  %42 = load %struct.module*, %struct.module** %23, align 8
  %43 = getelementptr inbounds %struct.module, %struct.module* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.module*, %struct.module** %23, align 8
  %45 = getelementptr inbounds %struct.module, %struct.module* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.module*, %struct.module** %23, align 8
  %48 = getelementptr inbounds %struct.module, %struct.module* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %28
  %52 = load %struct.module*, %struct.module** %23, align 8
  %53 = getelementptr inbounds %struct.module, %struct.module* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %28
  %55 = call i64 @calloc(i32 128, i32 1)
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.module*, %struct.module** %23, align 8
  %58 = getelementptr inbounds %struct.module, %struct.module* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.module*, %struct.module** %23, align 8
  %60 = getelementptr inbounds %struct.module, %struct.module* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load %struct.module*, %struct.module** %23, align 8
  %65 = call i32 @dispose_module(%struct.module* %64)
  store %struct.module* null, %struct.module** %3, align 8
  br label %573

66:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %95, %66
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 128
  br i1 %69, label %70, label %98

70:                                               ; preds = %67
  %71 = load %struct.data*, %struct.data** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 952, %72
  %74 = call i32 @data_u8(%struct.data* %71, i32 %73)
  %75 = and i32 %74, 127
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = trunc i32 %76 to i8
  %78 = load %struct.module*, %struct.module** %23, align 8
  %79 = getelementptr inbounds %struct.module, %struct.module* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 %77, i8* %83, align 1
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.module*, %struct.module** %23, align 8
  %86 = getelementptr inbounds %struct.module, %struct.module* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %70
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.module*, %struct.module** %23, align 8
  %93 = getelementptr inbounds %struct.module, %struct.module* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %89, %70
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %67

98:                                               ; preds = %67
  %99 = load %struct.data*, %struct.data** %4, align 8
  %100 = call i32 @data_u16be(%struct.data* %99, i32 1082)
  switch i32 %100, label %136 [
    i32 19246, label %101
    i32 19233, label %101
    i32 21556, label %101
    i32 18510, label %108
    i32 17224, label %118
  ]

101:                                              ; preds = %98, %98, %98
  %102 = load %struct.module*, %struct.module** %23, align 8
  %103 = getelementptr inbounds %struct.module, %struct.module* %102, i32 0, i32 4
  store i32 4, i32* %103, align 4
  %104 = load %struct.module*, %struct.module** %23, align 8
  %105 = getelementptr inbounds %struct.module, %struct.module* %104, i32 0, i32 5
  store i32 8287, i32* %105, align 8
  %106 = load %struct.module*, %struct.module** %23, align 8
  %107 = getelementptr inbounds %struct.module, %struct.module* %106, i32 0, i32 6
  store i32 64, i32* %107, align 4
  br label %141

108:                                              ; preds = %98
  %109 = load %struct.data*, %struct.data** %4, align 8
  %110 = call i32 @data_u8(%struct.data* %109, i32 1080)
  %111 = sub nsw i32 %110, 48
  %112 = load %struct.module*, %struct.module** %23, align 8
  %113 = getelementptr inbounds %struct.module, %struct.module* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.module*, %struct.module** %23, align 8
  %115 = getelementptr inbounds %struct.module, %struct.module* %114, i32 0, i32 5
  store i32 8363, i32* %115, align 8
  %116 = load %struct.module*, %struct.module** %23, align 8
  %117 = getelementptr inbounds %struct.module, %struct.module* %116, i32 0, i32 6
  store i32 32, i32* %117, align 4
  br label %141

118:                                              ; preds = %98
  %119 = load %struct.data*, %struct.data** %4, align 8
  %120 = call i32 @data_u8(%struct.data* %119, i32 1080)
  %121 = sub nsw i32 %120, 48
  %122 = mul nsw i32 %121, 10
  %123 = load %struct.module*, %struct.module** %23, align 8
  %124 = getelementptr inbounds %struct.module, %struct.module* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.data*, %struct.data** %4, align 8
  %126 = call i32 @data_u8(%struct.data* %125, i32 1081)
  %127 = sub nsw i32 %126, 48
  %128 = load %struct.module*, %struct.module** %23, align 8
  %129 = getelementptr inbounds %struct.module, %struct.module* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.module*, %struct.module** %23, align 8
  %133 = getelementptr inbounds %struct.module, %struct.module* %132, i32 0, i32 5
  store i32 8363, i32* %133, align 8
  %134 = load %struct.module*, %struct.module** %23, align 8
  %135 = getelementptr inbounds %struct.module, %struct.module* %134, i32 0, i32 6
  store i32 32, i32* %135, align 4
  br label %141

136:                                              ; preds = %98
  %137 = load i8*, i8** %5, align 8
  %138 = call i32 @strcpy(i8* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %139 = load %struct.module*, %struct.module** %23, align 8
  %140 = call i32 @dispose_module(%struct.module* %139)
  store %struct.module* null, %struct.module** %3, align 8
  br label %573

141:                                              ; preds = %118, %108, %101
  %142 = load %struct.module*, %struct.module** %23, align 8
  %143 = getelementptr inbounds %struct.module, %struct.module* %142, i32 0, i32 7
  store i32 64, i32* %143, align 8
  %144 = load %struct.module*, %struct.module** %23, align 8
  %145 = getelementptr inbounds %struct.module, %struct.module* %144, i32 0, i32 8
  store i32 6, i32* %145, align 4
  %146 = load %struct.module*, %struct.module** %23, align 8
  %147 = getelementptr inbounds %struct.module, %struct.module* %146, i32 0, i32 9
  store i32 125, i32* %147, align 8
  %148 = load %struct.module*, %struct.module** %23, align 8
  %149 = getelementptr inbounds %struct.module, %struct.module* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @calloc(i32 %150, i32 1)
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.module*, %struct.module** %23, align 8
  %154 = getelementptr inbounds %struct.module, %struct.module* %153, i32 0, i32 10
  store i8* %152, i8** %154, align 8
  %155 = load %struct.module*, %struct.module** %23, align 8
  %156 = getelementptr inbounds %struct.module, %struct.module* %155, i32 0, i32 10
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %141
  %160 = load %struct.module*, %struct.module** %23, align 8
  %161 = call i32 @dispose_module(%struct.module* %160)
  store %struct.module* null, %struct.module** %3, align 8
  br label %573

162:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %191, %162
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.module*, %struct.module** %23, align 8
  %166 = getelementptr inbounds %struct.module, %struct.module* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %194

169:                                              ; preds = %163
  %170 = load %struct.module*, %struct.module** %23, align 8
  %171 = getelementptr inbounds %struct.module, %struct.module* %170, i32 0, i32 10
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8 51, i8* %175, align 1
  %176 = load i32, i32* %6, align 4
  %177 = and i32 %176, 3
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %183, label %179

179:                                              ; preds = %169
  %180 = load i32, i32* %6, align 4
  %181 = and i32 %180, 3
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %190

183:                                              ; preds = %179, %169
  %184 = load %struct.module*, %struct.module** %23, align 8
  %185 = getelementptr inbounds %struct.module, %struct.module* %184, i32 0, i32 10
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  store i8 -52, i8* %189, align 1
  br label %190

190:                                              ; preds = %183, %179
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %163

194:                                              ; preds = %163
  store i32 1084, i32* %8, align 4
  %195 = load %struct.module*, %struct.module** %23, align 8
  %196 = getelementptr inbounds %struct.module, %struct.module* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @calloc(i32 %197, i32 16)
  %199 = inttoptr i64 %198 to %struct.pattern*
  %200 = load %struct.module*, %struct.module** %23, align 8
  %201 = getelementptr inbounds %struct.module, %struct.module* %200, i32 0, i32 13
  store %struct.pattern* %199, %struct.pattern** %201, align 8
  %202 = load %struct.module*, %struct.module** %23, align 8
  %203 = getelementptr inbounds %struct.module, %struct.module* %202, i32 0, i32 13
  %204 = load %struct.pattern*, %struct.pattern** %203, align 8
  %205 = icmp ne %struct.pattern* %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %194
  %207 = load %struct.module*, %struct.module** %23, align 8
  %208 = call i32 @dispose_module(%struct.module* %207)
  store %struct.module* null, %struct.module** %3, align 8
  br label %573

209:                                              ; preds = %194
  %210 = load %struct.module*, %struct.module** %23, align 8
  %211 = getelementptr inbounds %struct.module, %struct.module* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %212, 64
  %214 = mul nsw i32 %213, 5
  store i32 %214, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %215

215:                                              ; preds = %379, %209
  %216 = load i32, i32* %7, align 4
  %217 = load %struct.module*, %struct.module** %23, align 8
  %218 = getelementptr inbounds %struct.module, %struct.module* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %382

221:                                              ; preds = %215
  %222 = load %struct.module*, %struct.module** %23, align 8
  %223 = getelementptr inbounds %struct.module, %struct.module* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.module*, %struct.module** %23, align 8
  %226 = getelementptr inbounds %struct.module, %struct.module* %225, i32 0, i32 13
  %227 = load %struct.pattern*, %struct.pattern** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.pattern, %struct.pattern* %227, i64 %229
  %231 = getelementptr inbounds %struct.pattern, %struct.pattern* %230, i32 0, i32 0
  store i32 %224, i32* %231, align 8
  %232 = load %struct.module*, %struct.module** %23, align 8
  %233 = getelementptr inbounds %struct.module, %struct.module* %232, i32 0, i32 13
  %234 = load %struct.pattern*, %struct.pattern** %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.pattern, %struct.pattern* %234, i64 %236
  %238 = getelementptr inbounds %struct.pattern, %struct.pattern* %237, i32 0, i32 1
  store i32 64, i32* %238, align 4
  %239 = load i32, i32* %9, align 4
  %240 = call i64 @calloc(i32 1, i32 %239)
  %241 = inttoptr i64 %240 to i8*
  store i8* %241, i8** %20, align 8
  %242 = load i8*, i8** %20, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %221
  %245 = load %struct.module*, %struct.module** %23, align 8
  %246 = call i32 @dispose_module(%struct.module* %245)
  store %struct.module* null, %struct.module** %3, align 8
  br label %573

247:                                              ; preds = %221
  %248 = load i8*, i8** %20, align 8
  %249 = load %struct.module*, %struct.module** %23, align 8
  %250 = getelementptr inbounds %struct.module, %struct.module* %249, i32 0, i32 13
  %251 = load %struct.pattern*, %struct.pattern** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.pattern, %struct.pattern* %251, i64 %253
  %255 = getelementptr inbounds %struct.pattern, %struct.pattern* %254, i32 0, i32 2
  store i8* %248, i8** %255, align 8
  store i32 0, i32* %10, align 4
  br label %256

256:                                              ; preds = %375, %247
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %378

260:                                              ; preds = %256
  %261 = load %struct.data*, %struct.data** %4, align 8
  %262 = load i32, i32* %8, align 4
  %263 = call i32 @data_u8(%struct.data* %261, i32 %262)
  %264 = and i32 %263, 15
  %265 = shl i32 %264, 8
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = load %struct.data*, %struct.data** %4, align 8
  %268 = load i32, i32* %8, align 4
  %269 = add nsw i32 %268, 1
  %270 = call i32 @data_u8(%struct.data* %267, i32 %269)
  %271 = or i32 %266, %270
  %272 = mul nsw i32 %271, 4
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %11, align 4
  %274 = icmp sge i32 %273, 112
  br i1 %274, label %275, label %299

275:                                              ; preds = %260
  %276 = load i32, i32* %11, align 4
  %277 = icmp sle i32 %276, 6848
  br i1 %277, label %278, label %299

278:                                              ; preds = %275
  %279 = load i32, i32* %11, align 4
  %280 = load i32, i32* @FP_SHIFT, align 4
  %281 = shl i32 %279, %280
  %282 = sdiv i32 %281, 29021
  %283 = call i32 @log_2(i32 %282)
  %284 = mul nsw i32 -12, %283
  store i32 %284, i32* %12, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* @FP_ONE, align 4
  %288 = ashr i32 %287, 1
  %289 = and i32 %286, %288
  %290 = add nsw i32 %285, %289
  %291 = load i32, i32* @FP_SHIFT, align 4
  %292 = ashr i32 %290, %291
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %12, align 4
  %294 = trunc i32 %293 to i8
  %295 = load i8*, i8** %20, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  store i8 %294, i8* %298, align 1
  br label %299

299:                                              ; preds = %278, %275, %260
  %300 = load %struct.data*, %struct.data** %4, align 8
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 2
  %303 = call i32 @data_u8(%struct.data* %300, i32 %302)
  %304 = and i32 %303, 240
  %305 = ashr i32 %304, 4
  store i32 %305, i32* %13, align 4
  %306 = load i32, i32* %13, align 4
  %307 = load %struct.data*, %struct.data** %4, align 8
  %308 = load i32, i32* %8, align 4
  %309 = call i32 @data_u8(%struct.data* %307, i32 %308)
  %310 = and i32 %309, 16
  %311 = or i32 %306, %310
  store i32 %311, i32* %13, align 4
  %312 = load i32, i32* %13, align 4
  %313 = trunc i32 %312 to i8
  %314 = load i8*, i8** %20, align 8
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %314, i64 %317
  store i8 %313, i8* %318, align 1
  %319 = load %struct.data*, %struct.data** %4, align 8
  %320 = load i32, i32* %8, align 4
  %321 = add nsw i32 %320, 2
  %322 = call i32 @data_u8(%struct.data* %319, i32 %321)
  %323 = and i32 %322, 15
  store i32 %323, i32* %14, align 4
  %324 = load %struct.data*, %struct.data** %4, align 8
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 3
  %327 = call i32 @data_u8(%struct.data* %324, i32 %326)
  store i32 %327, i32* %15, align 4
  %328 = load i32, i32* %15, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %299
  %331 = load i32, i32* %14, align 4
  %332 = icmp slt i32 %331, 3
  br i1 %332, label %336, label %333

333:                                              ; preds = %330
  %334 = load i32, i32* %14, align 4
  %335 = icmp eq i32 %334, 10
  br i1 %335, label %336, label %337

336:                                              ; preds = %333, %330
  store i32 0, i32* %14, align 4
  br label %337

337:                                              ; preds = %336, %333, %299
  %338 = load i32, i32* %15, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %337
  %341 = load i32, i32* %14, align 4
  %342 = icmp eq i32 %341, 5
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = load i32, i32* %14, align 4
  %345 = icmp eq i32 %344, 6
  br i1 %345, label %346, label %349

346:                                              ; preds = %343, %340
  %347 = load i32, i32* %14, align 4
  %348 = sub nsw i32 %347, 2
  store i32 %348, i32* %14, align 4
  br label %349

349:                                              ; preds = %346, %343, %337
  %350 = load i32, i32* %14, align 4
  %351 = icmp eq i32 %350, 8
  br i1 %351, label %352, label %358

352:                                              ; preds = %349
  %353 = load %struct.module*, %struct.module** %23, align 8
  %354 = getelementptr inbounds %struct.module, %struct.module* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 4
  %356 = icmp eq i32 %355, 4
  br i1 %356, label %357, label %358

357:                                              ; preds = %352
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %358

358:                                              ; preds = %357, %352, %349
  %359 = load i32, i32* %14, align 4
  %360 = trunc i32 %359 to i8
  %361 = load i8*, i8** %20, align 8
  %362 = load i32, i32* %10, align 4
  %363 = add nsw i32 %362, 3
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %361, i64 %364
  store i8 %360, i8* %365, align 1
  %366 = load i32, i32* %15, align 4
  %367 = trunc i32 %366 to i8
  %368 = load i8*, i8** %20, align 8
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  store i8 %367, i8* %372, align 1
  %373 = load i32, i32* %8, align 4
  %374 = add nsw i32 %373, 4
  store i32 %374, i32* %8, align 4
  br label %375

375:                                              ; preds = %358
  %376 = load i32, i32* %10, align 4
  %377 = add nsw i32 %376, 5
  store i32 %377, i32* %10, align 4
  br label %256

378:                                              ; preds = %256
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %7, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %7, align 4
  br label %215

382:                                              ; preds = %215
  %383 = load %struct.module*, %struct.module** %23, align 8
  %384 = getelementptr inbounds %struct.module, %struct.module* %383, i32 0, i32 11
  store i32 31, i32* %384, align 8
  %385 = load %struct.module*, %struct.module** %23, align 8
  %386 = getelementptr inbounds %struct.module, %struct.module* %385, i32 0, i32 11
  %387 = load i32, i32* %386, align 8
  %388 = add nsw i32 %387, 1
  %389 = call i64 @calloc(i32 %388, i32 16)
  %390 = inttoptr i64 %389 to %struct.instrument*
  %391 = load %struct.module*, %struct.module** %23, align 8
  %392 = getelementptr inbounds %struct.module, %struct.module* %391, i32 0, i32 12
  store %struct.instrument* %390, %struct.instrument** %392, align 8
  %393 = load %struct.module*, %struct.module** %23, align 8
  %394 = getelementptr inbounds %struct.module, %struct.module* %393, i32 0, i32 12
  %395 = load %struct.instrument*, %struct.instrument** %394, align 8
  %396 = icmp ne %struct.instrument* %395, null
  br i1 %396, label %400, label %397

397:                                              ; preds = %382
  %398 = load %struct.module*, %struct.module** %23, align 8
  %399 = call i32 @dispose_module(%struct.module* %398)
  store %struct.module* null, %struct.module** %3, align 8
  br label %573

400:                                              ; preds = %382
  %401 = load %struct.module*, %struct.module** %23, align 8
  %402 = getelementptr inbounds %struct.module, %struct.module* %401, i32 0, i32 12
  %403 = load %struct.instrument*, %struct.instrument** %402, align 8
  %404 = getelementptr inbounds %struct.instrument, %struct.instrument* %403, i64 0
  store %struct.instrument* %404, %struct.instrument** %21, align 8
  %405 = load %struct.instrument*, %struct.instrument** %21, align 8
  %406 = getelementptr inbounds %struct.instrument, %struct.instrument* %405, i32 0, i32 0
  store i32 1, i32* %406, align 8
  %407 = call i64 @calloc(i32 1, i32 24)
  %408 = inttoptr i64 %407 to %struct.sample*
  %409 = load %struct.instrument*, %struct.instrument** %21, align 8
  %410 = getelementptr inbounds %struct.instrument, %struct.instrument* %409, i32 0, i32 2
  store %struct.sample* %408, %struct.sample** %410, align 8
  %411 = load %struct.instrument*, %struct.instrument** %21, align 8
  %412 = getelementptr inbounds %struct.instrument, %struct.instrument* %411, i32 0, i32 2
  %413 = load %struct.sample*, %struct.sample** %412, align 8
  %414 = icmp ne %struct.sample* %413, null
  br i1 %414, label %418, label %415

415:                                              ; preds = %400
  %416 = load %struct.module*, %struct.module** %23, align 8
  %417 = call i32 @dispose_module(%struct.module* %416)
  store %struct.module* null, %struct.module** %3, align 8
  br label %573

418:                                              ; preds = %400
  store i32 1, i32* %13, align 4
  br label %419

419:                                              ; preds = %567, %418
  %420 = load i32, i32* %13, align 4
  %421 = load %struct.module*, %struct.module** %23, align 8
  %422 = getelementptr inbounds %struct.module, %struct.module* %421, i32 0, i32 11
  %423 = load i32, i32* %422, align 8
  %424 = icmp sle i32 %420, %423
  br i1 %424, label %425, label %570

425:                                              ; preds = %419
  %426 = load %struct.module*, %struct.module** %23, align 8
  %427 = getelementptr inbounds %struct.module, %struct.module* %426, i32 0, i32 12
  %428 = load %struct.instrument*, %struct.instrument** %427, align 8
  %429 = load i32, i32* %13, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.instrument, %struct.instrument* %428, i64 %430
  store %struct.instrument* %431, %struct.instrument** %21, align 8
  %432 = load %struct.instrument*, %struct.instrument** %21, align 8
  %433 = getelementptr inbounds %struct.instrument, %struct.instrument* %432, i32 0, i32 0
  store i32 1, i32* %433, align 8
  %434 = call i64 @calloc(i32 1, i32 24)
  %435 = inttoptr i64 %434 to %struct.sample*
  %436 = load %struct.instrument*, %struct.instrument** %21, align 8
  %437 = getelementptr inbounds %struct.instrument, %struct.instrument* %436, i32 0, i32 2
  store %struct.sample* %435, %struct.sample** %437, align 8
  %438 = load %struct.instrument*, %struct.instrument** %21, align 8
  %439 = getelementptr inbounds %struct.instrument, %struct.instrument* %438, i32 0, i32 2
  %440 = load %struct.sample*, %struct.sample** %439, align 8
  %441 = icmp ne %struct.sample* %440, null
  br i1 %441, label %445, label %442

442:                                              ; preds = %425
  %443 = load %struct.module*, %struct.module** %23, align 8
  %444 = call i32 @dispose_module(%struct.module* %443)
  store %struct.module* null, %struct.module** %3, align 8
  br label %573

445:                                              ; preds = %425
  %446 = load %struct.instrument*, %struct.instrument** %21, align 8
  %447 = getelementptr inbounds %struct.instrument, %struct.instrument* %446, i32 0, i32 2
  %448 = load %struct.sample*, %struct.sample** %447, align 8
  %449 = getelementptr inbounds %struct.sample, %struct.sample* %448, i64 0
  store %struct.sample* %449, %struct.sample** %22, align 8
  %450 = load %struct.data*, %struct.data** %4, align 8
  %451 = load i32, i32* %13, align 4
  %452 = mul nsw i32 %451, 30
  %453 = sub nsw i32 %452, 10
  %454 = load %struct.instrument*, %struct.instrument** %21, align 8
  %455 = getelementptr inbounds %struct.instrument, %struct.instrument* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @data_ascii(%struct.data* %450, i32 %453, i32 22, i32 %456)
  %458 = load %struct.data*, %struct.data** %4, align 8
  %459 = load i32, i32* %13, align 4
  %460 = mul nsw i32 %459, 30
  %461 = add nsw i32 %460, 12
  %462 = call i32 @data_u16be(%struct.data* %458, i32 %461)
  %463 = mul nsw i32 %462, 2
  store i32 %463, i32* %17, align 4
  %464 = load %struct.data*, %struct.data** %4, align 8
  %465 = load i32, i32* %13, align 4
  %466 = mul nsw i32 %465, 30
  %467 = add nsw i32 %466, 14
  %468 = call i32 @data_u8(%struct.data* %464, i32 %467)
  %469 = and i32 %468, 15
  %470 = shl i32 %469, 4
  store i32 %470, i32* %16, align 4
  %471 = load i32, i32* %16, align 4
  %472 = and i32 %471, 127
  %473 = load i32, i32* %16, align 4
  %474 = and i32 %473, 128
  %475 = sub nsw i32 %472, %474
  %476 = load %struct.sample*, %struct.sample** %22, align 8
  %477 = getelementptr inbounds %struct.sample, %struct.sample* %476, i32 0, i32 0
  store i32 %475, i32* %477, align 8
  %478 = load %struct.data*, %struct.data** %4, align 8
  %479 = load i32, i32* %13, align 4
  %480 = mul nsw i32 %479, 30
  %481 = add nsw i32 %480, 15
  %482 = call i32 @data_u8(%struct.data* %478, i32 %481)
  %483 = and i32 %482, 127
  %484 = load %struct.sample*, %struct.sample** %22, align 8
  %485 = getelementptr inbounds %struct.sample, %struct.sample* %484, i32 0, i32 1
  store i32 %483, i32* %485, align 4
  %486 = load %struct.sample*, %struct.sample** %22, align 8
  %487 = getelementptr inbounds %struct.sample, %struct.sample* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 4
  %489 = icmp sgt i32 %488, 64
  br i1 %489, label %490, label %493

490:                                              ; preds = %445
  %491 = load %struct.sample*, %struct.sample** %22, align 8
  %492 = getelementptr inbounds %struct.sample, %struct.sample* %491, i32 0, i32 1
  store i32 64, i32* %492, align 4
  br label %493

493:                                              ; preds = %490, %445
  %494 = load %struct.data*, %struct.data** %4, align 8
  %495 = load i32, i32* %13, align 4
  %496 = mul nsw i32 %495, 30
  %497 = add nsw i32 %496, 16
  %498 = call i32 @data_u16be(%struct.data* %494, i32 %497)
  %499 = mul nsw i32 %498, 2
  store i32 %499, i32* %18, align 4
  %500 = load %struct.data*, %struct.data** %4, align 8
  %501 = load i32, i32* %13, align 4
  %502 = mul nsw i32 %501, 30
  %503 = add nsw i32 %502, 18
  %504 = call i32 @data_u16be(%struct.data* %500, i32 %503)
  %505 = mul nsw i32 %504, 2
  store i32 %505, i32* %19, align 4
  %506 = load i32, i32* %18, align 4
  %507 = load i32, i32* %19, align 4
  %508 = add nsw i32 %506, %507
  %509 = load i32, i32* %17, align 4
  %510 = icmp sgt i32 %508, %509
  br i1 %510, label %511, label %515

511:                                              ; preds = %493
  %512 = load i32, i32* %17, align 4
  %513 = load i32, i32* %18, align 4
  %514 = sub nsw i32 %512, %513
  store i32 %514, i32* %19, align 4
  br label %515

515:                                              ; preds = %511, %493
  %516 = load i32, i32* %19, align 4
  %517 = icmp slt i32 %516, 4
  br i1 %517, label %518, label %520

518:                                              ; preds = %515
  %519 = load i32, i32* %17, align 4
  store i32 %519, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %520

520:                                              ; preds = %518, %515
  %521 = load i32, i32* %18, align 4
  %522 = load %struct.sample*, %struct.sample** %22, align 8
  %523 = getelementptr inbounds %struct.sample, %struct.sample* %522, i32 0, i32 2
  store i32 %521, i32* %523, align 8
  %524 = load i32, i32* %19, align 4
  %525 = load %struct.sample*, %struct.sample** %22, align 8
  %526 = getelementptr inbounds %struct.sample, %struct.sample* %525, i32 0, i32 3
  store i32 %524, i32* %526, align 4
  %527 = load i32, i32* %17, align 4
  %528 = add nsw i32 %527, 1
  %529 = call i64 @calloc(i32 %528, i32 2)
  %530 = inttoptr i64 %529 to i16*
  %531 = load %struct.sample*, %struct.sample** %22, align 8
  %532 = getelementptr inbounds %struct.sample, %struct.sample* %531, i32 0, i32 4
  store i16* %530, i16** %532, align 8
  %533 = load %struct.sample*, %struct.sample** %22, align 8
  %534 = getelementptr inbounds %struct.sample, %struct.sample* %533, i32 0, i32 4
  %535 = load i16*, i16** %534, align 8
  %536 = icmp ne i16* %535, null
  br i1 %536, label %537, label %560

537:                                              ; preds = %520
  %538 = load %struct.data*, %struct.data** %4, align 8
  %539 = load i32, i32* %8, align 4
  %540 = load i32, i32* %17, align 4
  %541 = load %struct.sample*, %struct.sample** %22, align 8
  %542 = getelementptr inbounds %struct.sample, %struct.sample* %541, i32 0, i32 4
  %543 = load i16*, i16** %542, align 8
  %544 = call i32 @data_sam_s8(%struct.data* %538, i32 %539, i32 %540, i16* %543)
  %545 = load %struct.sample*, %struct.sample** %22, align 8
  %546 = getelementptr inbounds %struct.sample, %struct.sample* %545, i32 0, i32 4
  %547 = load i16*, i16** %546, align 8
  %548 = load i32, i32* %18, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i16, i16* %547, i64 %549
  %551 = load i16, i16* %550, align 2
  %552 = load %struct.sample*, %struct.sample** %22, align 8
  %553 = getelementptr inbounds %struct.sample, %struct.sample* %552, i32 0, i32 4
  %554 = load i16*, i16** %553, align 8
  %555 = load i32, i32* %18, align 4
  %556 = load i32, i32* %19, align 4
  %557 = add nsw i32 %555, %556
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i16, i16* %554, i64 %558
  store i16 %551, i16* %559, align 2
  br label %563

560:                                              ; preds = %520
  %561 = load %struct.module*, %struct.module** %23, align 8
  %562 = call i32 @dispose_module(%struct.module* %561)
  store %struct.module* null, %struct.module** %3, align 8
  br label %573

563:                                              ; preds = %537
  %564 = load i32, i32* %17, align 4
  %565 = load i32, i32* %8, align 4
  %566 = add nsw i32 %565, %564
  store i32 %566, i32* %8, align 4
  br label %567

567:                                              ; preds = %563
  %568 = load i32, i32* %13, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %13, align 4
  br label %419

570:                                              ; preds = %419
  br label %571

571:                                              ; preds = %570, %2
  %572 = load %struct.module*, %struct.module** %23, align 8
  store %struct.module* %572, %struct.module** %3, align 8
  br label %573

573:                                              ; preds = %571, %560, %442, %415, %397, %244, %206, %159, %136, %63
  %574 = load %struct.module*, %struct.module** %3, align 8
  ret %struct.module* %574
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @data_ascii(%struct.data*, i32, i32, i32) #1

declare dso_local i32 @data_u8(%struct.data*, i32) #1

declare dso_local i32 @dispose_module(%struct.module*) #1

declare dso_local i32 @data_u16be(%struct.data*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @log_2(i32) #1

declare dso_local i32 @data_sam_s8(%struct.data*, i32, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
