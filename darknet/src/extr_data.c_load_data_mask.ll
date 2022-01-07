; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_mask.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_17__, i64, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_data_mask(%struct.TYPE_19__* noalias sret %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, float %11, float %12, float %13, float %14, float %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca i8**, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_16__, align 8
  %35 = alloca %struct.TYPE_18__, align 4
  %36 = alloca { i64, i32 }, align 8
  %37 = alloca %struct.TYPE_20__, align 8
  %38 = alloca { i64, i32 }, align 4
  %39 = alloca %struct.TYPE_18__, align 4
  %40 = alloca { i64, i32 }, align 4
  %41 = alloca { i64, i32 }, align 8
  %42 = alloca i32, align 4
  %43 = alloca { i64, i32 }, align 4
  %44 = alloca { i64, i32 }, align 4
  %45 = alloca { i64, i32 }, align 4
  store i32 %1, i32* %17, align 4
  store i8** %2, i8*** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store float %11, float* %27, align 4
  store float %12, float* %28, align 4
  store float %13, float* %29, align 4
  store float %14, float* %30, align 4
  store float %15, float* %31, align 4
  %46 = load i8**, i8*** %18, align 8
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %19, align 4
  %49 = call i8** @get_random_paths(i8** %46, i32 %47, i32 %48)
  store i8** %49, i8*** %32, align 8
  %50 = bitcast %struct.TYPE_19__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %50, i8 0, i64 40, i1 false)
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %17, align 4
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32* @calloc(i32 %57, i32 8)
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %20, align 4
  %63 = mul nsw i32 %61, %62
  %64 = mul nsw i32 %63, 3
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %24, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %23, align 4
  %72 = mul nsw i32 %70, %71
  %73 = call i32* @make_matrix(i32 %68, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store i32* %73, i32** %74, align 8
  %75 = bitcast %struct.TYPE_16__* %67 to i8*
  %76 = bitcast %struct.TYPE_16__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 8, i1 false)
  store i32 0, i32* %33, align 4
  br label %77

77:                                               ; preds = %183, %16
  %78 = load i32, i32* %33, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %186

81:                                               ; preds = %77
  %82 = load i8**, i8*** %32, align 8
  %83 = load i32, i32* %33, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call { i64, i32 } @load_image_color(i8* %86, i32 0, i32 0)
  store { i64, i32 } %87, { i64, i32 }* %36, align 8
  %88 = bitcast { i64, i32 }* %36 to i8*
  %89 = bitcast %struct.TYPE_18__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 8 %88, i64 12, i1 false)
  %90 = load float, float* %27, align 4
  %91 = load float, float* %28, align 4
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* %26, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %21, align 4
  %96 = bitcast { i64, i32 }* %38 to i8*
  %97 = bitcast %struct.TYPE_18__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 12, i1 false)
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %99 = load i64, i64* %98, align 4
  %100 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  call void @random_augment_args(%struct.TYPE_20__* sret %37, i64 %99, i32 %101, float %90, float %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = bitcast { i64, i32 }* %40 to i8*
  %117 = bitcast %struct.TYPE_18__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 12, i1 false)
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %119 = load i64, i64* %118, align 4
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call { i64, i32 } @rotate_crop_image(i64 %119, i32 %121, i32 %103, i32 %105, i32 %107, i32 %109, i32 %111, i32 %113, i32 %115)
  store { i64, i32 } %122, { i64, i32 }* %41, align 8
  %123 = bitcast { i64, i32 }* %41 to i8*
  %124 = bitcast %struct.TYPE_18__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 8 %123, i64 12, i1 false)
  %125 = call i32 (...) @rand()
  %126 = srem i32 %125, 2
  store i32 %126, i32* %42, align 4
  %127 = load i32, i32* %42, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %81
  %130 = bitcast { i64, i32 }* %43 to i8*
  %131 = bitcast %struct.TYPE_18__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 12, i1 false)
  %132 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %133 = load i64, i64* %132, align 4
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @flip_image(i64 %133, i32 %135)
  br label %137

137:                                              ; preds = %129, %81
  %138 = load float, float* %29, align 4
  %139 = load float, float* %30, align 4
  %140 = load float, float* %31, align 4
  %141 = bitcast { i64, i32 }* %44 to i8*
  %142 = bitcast %struct.TYPE_18__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 12, i1 false)
  %143 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %144 = load i64, i64* %143, align 4
  %145 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @random_distort_image(i64 %144, i32 %146, float %138, float %139, float %140)
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %33, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  %156 = load i8**, i8*** %32, align 8
  %157 = load i32, i32* %33, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %23, align 4
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %33, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %22, align 4
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %42, align 4
  %175 = call i32 @fill_truth_mask(i8* %160, i32 %161, i32 %168, i32 %169, i32 %171, i32 %173, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %37, i32 %174, i32 14, i32 14)
  %176 = bitcast { i64, i32 }* %45 to i8*
  %177 = bitcast %struct.TYPE_18__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 %177, i64 12, i1 false)
  %178 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 0
  %179 = load i64, i64* %178, align 4
  %180 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @free_image(i64 %179, i32 %181)
  br label %183

183:                                              ; preds = %137
  %184 = load i32, i32* %33, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %33, align 4
  br label %77

186:                                              ; preds = %77
  %187 = load i8**, i8*** %32, align 8
  %188 = call i32 @free(i8** %187)
  ret void
}

declare dso_local i8** @get_random_paths(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32* @make_matrix(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @load_image_color(i8*, i32, i32) #1

declare dso_local void @random_augment_args(%struct.TYPE_20__* sret, i64, i32, float, float, i32, i32, i32, i32) #1

declare dso_local { i64, i32 } @rotate_crop_image(i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @flip_image(i64, i32) #1

declare dso_local i32 @random_distort_image(i64, i32, float, float, float) #1

declare dso_local i32 @fill_truth_mask(i8*, i32, i32, i32, i32, i32, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, i32, i32, i32) #1

declare dso_local i32 @free_image(i64, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
