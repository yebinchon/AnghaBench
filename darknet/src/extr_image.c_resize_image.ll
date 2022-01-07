; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_resize_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_resize_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @resize_image(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = alloca { i64, i32 }, align 4
  %25 = alloca { i64, i32 }, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca { i64, i32 }, align 4
  %31 = alloca { i64, i32 }, align 4
  %32 = alloca float, align 4
  %33 = alloca { i64, i32 }, align 4
  %34 = alloca { i64, i32 }, align 4
  %35 = alloca { i64, i32 }, align 4
  %36 = alloca { i64, i32 }, align 8
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %37, align 4
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %38, align 4
  %39 = bitcast %struct.TYPE_9__* %6 to i8*
  %40 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call { i64, i32 } @make_image(i32 %41, i32 %42, i32 %44)
  store { i64, i32 } %45, { i64, i32 }* %10, align 8
  %46 = bitcast { i64, i32 }* %10 to i8*
  %47 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 8 %46, i64 12, i1 false)
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call { i64, i32 } @make_image(i32 %48, i32 %50, i32 %52)
  store { i64, i32 } %53, { i64, i32 }* %12, align 8
  %54 = bitcast { i64, i32 }* %12 to i8*
  %55 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 8 %54, i64 12, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sitofp i32 %58 to float
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %59, %62
  store float %63, float* %16, align 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sitofp i32 %66 to float
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sitofp i32 %69 to float
  %71 = fdiv float %67, %70
  store float %71, float* %17, align 4
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %168, %4
  %73 = load i32, i32* %15, align 4
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %171

77:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %164, %77
  %79 = load i32, i32* %13, align 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %167

83:                                               ; preds = %78
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %160, %83
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %163

88:                                               ; preds = %84
  store float 0.000000e+00, float* %18, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %110

97:                                               ; preds = %93, %88
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %15, align 4
  %103 = bitcast { i64, i32 }* %19 to i8*
  %104 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 12, i1 false)
  %105 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %106 = load i64, i64* %105, align 4
  %107 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call float @get_pixel(i64 %106, i32 %108, i32 %100, i32 %101, i32 %102)
  store float %109, float* %18, align 4
  br label %148

110:                                              ; preds = %93
  %111 = load i32, i32* %14, align 4
  %112 = sitofp i32 %111 to float
  %113 = load float, float* %16, align 4
  %114 = fmul float %112, %113
  store float %114, float* %20, align 4
  %115 = load float, float* %20, align 4
  %116 = fptosi float %115 to i32
  store i32 %116, i32* %21, align 4
  %117 = load float, float* %20, align 4
  %118 = load i32, i32* %21, align 4
  %119 = sitofp i32 %118 to float
  %120 = fsub float %117, %119
  store float %120, float* %22, align 4
  %121 = load float, float* %22, align 4
  %122 = fsub float 1.000000e+00, %121
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %15, align 4
  %126 = bitcast { i64, i32 }* %23 to i8*
  %127 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 %127, i64 12, i1 false)
  %128 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %129 = load i64, i64* %128, align 4
  %130 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call float @get_pixel(i64 %129, i32 %131, i32 %123, i32 %124, i32 %125)
  %133 = fmul float %122, %132
  %134 = load float, float* %22, align 4
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %15, align 4
  %139 = bitcast { i64, i32 }* %24 to i8*
  %140 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 %140, i64 12, i1 false)
  %141 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %142 = load i64, i64* %141, align 4
  %143 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call float @get_pixel(i64 %142, i32 %144, i32 %136, i32 %137, i32 %138)
  %146 = fmul float %134, %145
  %147 = fadd float %133, %146
  store float %147, float* %18, align 4
  br label %148

148:                                              ; preds = %110, %97
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load float, float* %18, align 4
  %153 = bitcast { i64, i32 }* %25 to i8*
  %154 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 4 %154, i64 12, i1 false)
  %155 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %156 = load i64, i64* %155, align 4
  %157 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @set_pixel(i64 %156, i32 %158, i32 %149, i32 %150, i32 %151, float %152)
  br label %160

160:                                              ; preds = %148
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %84

163:                                              ; preds = %84
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %78

167:                                              ; preds = %78
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %15, align 4
  br label %72

171:                                              ; preds = %72
  store i32 0, i32* %15, align 4
  br label %172

172:                                              ; preds = %273, %171
  %173 = load i32, i32* %15, align 4
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %276

177:                                              ; preds = %172
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %269, %177
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %272

182:                                              ; preds = %178
  %183 = load i32, i32* %13, align 4
  %184 = sitofp i32 %183 to float
  %185 = load float, float* %17, align 4
  %186 = fmul float %184, %185
  store float %186, float* %26, align 4
  %187 = load float, float* %26, align 4
  %188 = fptosi float %187 to i32
  store i32 %188, i32* %27, align 4
  %189 = load float, float* %26, align 4
  %190 = load i32, i32* %27, align 4
  %191 = sitofp i32 %190 to float
  %192 = fsub float %189, %191
  store float %192, float* %28, align 4
  store i32 0, i32* %14, align 4
  br label %193

193:                                              ; preds = %222, %182
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %225

197:                                              ; preds = %193
  %198 = load float, float* %28, align 4
  %199 = fsub float 1.000000e+00, %198
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %27, align 4
  %202 = load i32, i32* %15, align 4
  %203 = bitcast { i64, i32 }* %30 to i8*
  %204 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %203, i8* align 4 %204, i64 12, i1 false)
  %205 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  %206 = load i64, i64* %205, align 4
  %207 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call float @get_pixel(i64 %206, i32 %208, i32 %200, i32 %201, i32 %202)
  %210 = fmul float %199, %209
  store float %210, float* %29, align 4
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %15, align 4
  %214 = load float, float* %29, align 4
  %215 = bitcast { i64, i32 }* %31 to i8*
  %216 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %215, i8* align 4 %216, i64 12, i1 false)
  %217 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 0
  %218 = load i64, i64* %217, align 4
  %219 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @set_pixel(i64 %218, i32 %220, i32 %211, i32 %212, i32 %213, float %214)
  br label %222

222:                                              ; preds = %197
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %193

225:                                              ; preds = %193
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %9, align 4
  %228 = sub nsw i32 %227, 1
  %229 = icmp eq i32 %226, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %235

234:                                              ; preds = %230, %225
  br label %269

235:                                              ; preds = %230
  store i32 0, i32* %14, align 4
  br label %236

236:                                              ; preds = %265, %235
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %268

240:                                              ; preds = %236
  %241 = load float, float* %28, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %27, align 4
  %244 = add nsw i32 %243, 1
  %245 = load i32, i32* %15, align 4
  %246 = bitcast { i64, i32 }* %33 to i8*
  %247 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %246, i8* align 4 %247, i64 12, i1 false)
  %248 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %249 = load i64, i64* %248, align 4
  %250 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call float @get_pixel(i64 %249, i32 %251, i32 %242, i32 %244, i32 %245)
  %253 = fmul float %241, %252
  store float %253, float* %32, align 4
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %15, align 4
  %257 = load float, float* %32, align 4
  %258 = bitcast { i64, i32 }* %34 to i8*
  %259 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %258, i8* align 4 %259, i64 12, i1 false)
  %260 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %261 = load i64, i64* %260, align 4
  %262 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @add_pixel(i64 %261, i32 %263, i32 %254, i32 %255, i32 %256, float %257)
  br label %265

265:                                              ; preds = %240
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %14, align 4
  br label %236

268:                                              ; preds = %236
  br label %269

269:                                              ; preds = %268, %234
  %270 = load i32, i32* %13, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %13, align 4
  br label %178

272:                                              ; preds = %178
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  br label %172

276:                                              ; preds = %172
  %277 = bitcast { i64, i32 }* %35 to i8*
  %278 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %277, i8* align 4 %278, i64 12, i1 false)
  %279 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %280 = load i64, i64* %279, align 4
  %281 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @free_image(i64 %280, i32 %282)
  %284 = bitcast { i64, i32 }* %36 to i8*
  %285 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %284, i8* align 4 %285, i64 12, i1 false)
  %286 = load { i64, i32 }, { i64, i32 }* %36, align 8
  ret { i64, i32 } %286
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i32 } @make_image(i32, i32, i32) #2

declare dso_local float @get_pixel(i64, i32, i32, i32, i32) #2

declare dso_local i32 @set_pixel(i64, i32, i32, i32, i32, float) #2

declare dso_local i32 @add_pixel(i64, i32, i32, i32, i32, float) #2

declare dso_local i32 @free_image(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
