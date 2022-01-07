; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/src/extr_memory_layout_utils.c_soc_get_available_memory_regions.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/src/extr_memory_layout_utils.c_soc_get_available_memory_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@soc_memory_region_count = common dso_local global i32 0, align 4
@soc_memory_regions = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Building list of available memory regions:\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Examining memory region 0x%08x - 0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Region 0x%08x - 0x%08x inside of reserved 0x%08x - 0x%08x\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Region 0x%08x - 0x%08x contains reserved 0x%08x - 0x%08x\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Start of region 0x%08x - 0x%08x overlaps reserved 0x%08x - 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"End of region 0x%08x - 0x%08x overlaps reserved 0x%08x - 0x%08x\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Available memory region 0x%08x - 0x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @soc_get_available_memory_regions(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %3, align 8
  %16 = load i32, i32* @soc_memory_region_count, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca %struct.TYPE_7__, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = load i32, i32* @soc_memory_regions, align 4
  %21 = mul nuw i64 16, %17
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(%struct.TYPE_7__* %19, i32 %20, i32 %22)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %6, align 8
  %24 = call i64 (...) @s_get_num_reserved_regions()
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = alloca %struct.TYPE_6__, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @s_prepare_reserved_regions(%struct.TYPE_6__* %26, i64 %27)
  %29 = load i32, i32* @TAG, align 4
  %30 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGD(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %255, %1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = load i32, i32* @soc_memory_region_count, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %34
  %36 = icmp ne %struct.TYPE_7__* %32, %35
  br i1 %36, label %37, label %256

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = bitcast %struct.TYPE_7__* %9 to i8*
  %40 = bitcast %struct.TYPE_7__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load i32, i32* @TAG, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %45, %47
  %49 = call i32 (i32, i8*, i64, i64, ...) @ESP_EARLY_LOGV(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %52, %54
  store i64 %55, i64* %11, align 8
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %56

56:                                               ; preds = %229, %37
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %232

60:                                               ; preds = %56
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 16
  %65 = load i64, i64* %10, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %229

68:                                               ; preds = %60
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %232

76:                                               ; preds = %68
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp sle i64 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %76
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 16
  %88 = load i64, i64* %11, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = load i32, i32* @TAG, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 16
  %102 = call i32 (i32, i8*, i64, i64, ...) @ESP_EARLY_LOGV(i32 %91, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %92, i64 %93, i64 %97, i64 %101)
  store i32 0, i32* %12, align 4
  br label %232

103:                                              ; preds = %83, %76
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %104, %108
  br i1 %109, label %110, label %172

110:                                              ; preds = %103
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 16
  %116 = icmp sgt i64 %111, %115
  br i1 %116, label %117, label %172

117:                                              ; preds = %110
  %118 = load i32, i32* @TAG, align 4
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 16
  %129 = call i32 (i32, i8*, i64, i64, ...) @ESP_EARLY_LOGV(i32 %118, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %119, i64 %120, i64 %124, i64 %128)
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %130, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 16
  %143 = icmp sgt i64 %138, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i64, i64* %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %11, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %10, align 8
  %152 = sub nsw i64 %150, %151
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  %154 = load i64, i64* %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 16
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %157, %160
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load i64, i64* %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 16
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  store i32 0, i32* %13, align 4
  br label %232

172:                                              ; preds = %110, %103
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = icmp sle i64 %176, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %172
  %180 = load i32, i32* @TAG, align 4
  %181 = load i64, i64* %10, align 8
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 16
  %191 = call i32 (i32, i8*, i64, i64, ...) @ESP_EARLY_LOGV(i32 %180, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i64 %181, i64 %182, i64 %186, i64 %190)
  %192 = load i64, i64* %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 16
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 %195, i64* %196, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %10, align 8
  %199 = load i64, i64* %11, align 8
  %200 = load i64, i64* %10, align 8
  %201 = sub nsw i64 %199, %200
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i64 %201, i64* %202, align 8
  br label %224

203:                                              ; preds = %172
  %204 = load i32, i32* @TAG, align 4
  %205 = load i64, i64* %10, align 8
  %206 = load i64, i64* %11, align 8
  %207 = load i64, i64* %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 16
  %215 = call i32 (i32, i8*, i64, i64, ...) @ESP_EARLY_LOGV(i32 %204, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i64 %205, i64 %206, i64 %210, i64 %214)
  %216 = load i64, i64* %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %11, align 8
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* %10, align 8
  %222 = sub nsw i64 %220, %221
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i64 %222, i64* %223, align 8
  br label %224

224:                                              ; preds = %203, %179
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228, %67
  %230 = load i64, i64* %14, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %14, align 8
  br label %56

232:                                              ; preds = %117, %90, %75, %56
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %232
  %236 = load i32, i32* @TAG, align 4
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %240, %242
  %244 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGD(i32 %236, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %238, i64 %243)
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 1
  store %struct.TYPE_7__* %246, %struct.TYPE_7__** %3, align 8
  %247 = bitcast %struct.TYPE_7__* %245 to i8*
  %248 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %247, i8* align 8 %248, i64 16, i1 false)
  br label %249

249:                                              ; preds = %235, %232
  %250 = load i32, i32* %13, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 1
  store %struct.TYPE_7__* %254, %struct.TYPE_7__** %6, align 8
  br label %255

255:                                              ; preds = %252, %249
  br label %31

256:                                              ; preds = %31
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %259 = ptrtoint %struct.TYPE_7__* %257 to i64
  %260 = ptrtoint %struct.TYPE_7__* %258 to i64
  %261 = sub i64 %259, %260
  %262 = sdiv exact i64 %261, 16
  %263 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %263)
  ret i64 %262
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i64 @s_get_num_reserved_regions(...) #2

declare dso_local i32 @s_prepare_reserved_regions(%struct.TYPE_6__*, i64) #2

declare dso_local i32 @ESP_EARLY_LOGD(i32, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ESP_EARLY_LOGV(i32, i8*, i64, i64, ...) #2

declare dso_local i32 @assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
