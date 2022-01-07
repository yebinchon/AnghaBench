; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_seg.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_16__, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_data_seg(%struct.TYPE_19__* noalias sret %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, float %9, float %10, float %11, float %12, float %13, i32 %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8**, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_18__, align 4
  %33 = alloca { i64, i32 }, align 8
  %34 = alloca %struct.TYPE_20__, align 4
  %35 = alloca { i64, i32 }, align 4
  %36 = alloca %struct.TYPE_18__, align 4
  %37 = alloca { i64, i32 }, align 4
  %38 = alloca { i64, i32 }, align 8
  %39 = alloca i32, align 4
  %40 = alloca { i64, i32 }, align 4
  %41 = alloca { i64, i32 }, align 4
  %42 = alloca %struct.TYPE_18__, align 4
  %43 = alloca { i64, i32 }, align 8
  %44 = alloca %struct.TYPE_18__, align 4
  %45 = alloca { i64, i32 }, align 4
  %46 = alloca { i64, i32 }, align 8
  %47 = alloca { i64, i32 }, align 4
  %48 = alloca { i64, i32 }, align 4
  %49 = alloca { i64, i32 }, align 4
  store i32 %1, i32* %16, align 4
  store i8** %2, i8*** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store float %9, float* %24, align 4
  store float %10, float* %25, align 4
  store float %11, float* %26, align 4
  store float %12, float* %27, align 4
  store float %13, float* %28, align 4
  store i32 %14, i32* %29, align 4
  %50 = load i8**, i8*** %17, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i8** @get_random_paths(i8** %50, i32 %51, i32 %52)
  store i8** %53, i8*** %30, align 8
  %54 = bitcast %struct.TYPE_19__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 48, i1 false)
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %16, align 4
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @calloc(i32 %61, i32 8)
  %63 = bitcast i8* %62 to i32*
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %19, align 4
  %68 = mul nsw i32 %66, %67
  %69 = mul nsw i32 %68, 3
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %16, align 4
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %19, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %21, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %29, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32, i32* %29, align 4
  %83 = sdiv i32 %81, %82
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @calloc(i32 %88, i32 8)
  %90 = bitcast i8* %89 to i32*
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  store i32 0, i32* %31, align 4
  br label %93

93:                                               ; preds = %251, %15
  %94 = load i32, i32* %31, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %254

97:                                               ; preds = %93
  %98 = load i8**, i8*** %30, align 8
  %99 = load i32, i32* %31, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call { i64, i32 } @load_image_color(i8* %102, i32 0, i32 0)
  store { i64, i32 } %103, { i64, i32 }* %33, align 8
  %104 = bitcast { i64, i32 }* %33 to i8*
  %105 = bitcast %struct.TYPE_18__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 8 %104, i64 12, i1 false)
  %106 = load float, float* %24, align 4
  %107 = load float, float* %25, align 4
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %20, align 4
  %112 = bitcast { i64, i32 }* %35 to i8*
  %113 = bitcast %struct.TYPE_18__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 12, i1 false)
  %114 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %115 = load i64, i64* %114, align 4
  %116 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  call void @random_augment_args(%struct.TYPE_20__* sret %34, i64 %115, i32 %117, float %106, float %107, i32 %108, i32 %109, i32 %110, i32 %111)
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = bitcast { i64, i32 }* %37 to i8*
  %133 = bitcast %struct.TYPE_18__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 12, i1 false)
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %135 = load i64, i64* %134, align 4
  %136 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call { i64, i32 } @rotate_crop_image(i64 %135, i32 %137, i32 %119, i32 %121, i32 %123, i32 %125, i32 %127, i32 %129, i32 %131)
  store { i64, i32 } %138, { i64, i32 }* %38, align 8
  %139 = bitcast { i64, i32 }* %38 to i8*
  %140 = bitcast %struct.TYPE_18__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 8 %139, i64 12, i1 false)
  %141 = call i32 (...) @rand()
  %142 = srem i32 %141, 2
  store i32 %142, i32* %39, align 4
  %143 = load i32, i32* %39, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %97
  %146 = bitcast { i64, i32 }* %40 to i8*
  %147 = bitcast %struct.TYPE_18__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 12, i1 false)
  %148 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %149 = load i64, i64* %148, align 4
  %150 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @flip_image(i64 %149, i32 %151)
  br label %153

153:                                              ; preds = %145, %97
  %154 = load float, float* %26, align 4
  %155 = load float, float* %27, align 4
  %156 = load float, float* %28, align 4
  %157 = bitcast { i64, i32 }* %41 to i8*
  %158 = bitcast %struct.TYPE_18__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 4 %158, i64 12, i1 false)
  %159 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 0
  %160 = load i64, i64* %159, align 4
  %161 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @random_distort_image(i64 %160, i32 %162, float %154, float %155, float %156)
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %31, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load i8**, i8*** %30, align 8
  %173 = load i32, i32* %31, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %21, align 4
  %182 = call { i64, i32 } @get_segmentation_image(i8* %176, i32 %178, i32 %180, i32 %181)
  store { i64, i32 } %182, { i64, i32 }* %43, align 8
  %183 = bitcast { i64, i32 }* %43 to i8*
  %184 = bitcast %struct.TYPE_18__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 8 %183, i64 12, i1 false)
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %29, align 4
  %190 = sdiv i32 %188, %189
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %29, align 4
  %194 = sdiv i32 %192, %193
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %29, align 4
  %198 = sdiv i32 %196, %197
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %29, align 4
  %202 = sdiv i32 %200, %201
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %29, align 4
  %206 = sdiv i32 %204, %205
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = bitcast { i64, i32 }* %45 to i8*
  %210 = bitcast %struct.TYPE_18__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %209, i8* align 4 %210, i64 12, i1 false)
  %211 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 0
  %212 = load i64, i64* %211, align 4
  %213 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call { i64, i32 } @rotate_crop_image(i64 %212, i32 %214, i32 %186, i32 %190, i32 %194, i32 %198, i32 %202, i32 %206, i32 %208)
  store { i64, i32 } %215, { i64, i32 }* %46, align 8
  %216 = bitcast { i64, i32 }* %46 to i8*
  %217 = bitcast %struct.TYPE_18__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %217, i8* align 8 %216, i64 12, i1 false)
  %218 = load i32, i32* %39, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %153
  %221 = bitcast { i64, i32 }* %47 to i8*
  %222 = bitcast %struct.TYPE_18__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %221, i8* align 4 %222, i64 12, i1 false)
  %223 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %47, i32 0, i32 0
  %224 = load i64, i64* %223, align 4
  %225 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %47, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @flip_image(i64 %224, i32 %226)
  br label %228

228:                                              ; preds = %220, %153
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %31, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %230, i32* %236, align 4
  %237 = bitcast { i64, i32 }* %48 to i8*
  %238 = bitcast %struct.TYPE_18__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %237, i8* align 4 %238, i64 12, i1 false)
  %239 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %48, i32 0, i32 0
  %240 = load i64, i64* %239, align 4
  %241 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %48, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @free_image(i64 %240, i32 %242)
  %244 = bitcast { i64, i32 }* %49 to i8*
  %245 = bitcast %struct.TYPE_18__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %244, i8* align 4 %245, i64 12, i1 false)
  %246 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 0
  %247 = load i64, i64* %246, align 4
  %248 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @free_image(i64 %247, i32 %249)
  br label %251

251:                                              ; preds = %228
  %252 = load i32, i32* %31, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %31, align 4
  br label %93

254:                                              ; preds = %93
  %255 = load i8**, i8*** %30, align 8
  %256 = call i32 @free(i8** %255)
  ret void
}

declare dso_local i8** @get_random_paths(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local { i64, i32 } @load_image_color(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @random_augment_args(%struct.TYPE_20__* sret, i64, i32, float, float, i32, i32, i32, i32) #1

declare dso_local { i64, i32 } @rotate_crop_image(i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @flip_image(i64, i32) #1

declare dso_local i32 @random_distort_image(i64, i32, float, float, float) #1

declare dso_local { i64, i32 } @get_segmentation_image(i8*, i32, i32, i32) #1

declare dso_local i32 @free_image(i64, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
