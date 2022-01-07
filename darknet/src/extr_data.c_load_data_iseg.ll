; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_iseg.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_iseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_17__, i64, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_data_iseg(%struct.TYPE_19__* noalias sret %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, float %11, float %12, float %13, float %14, float %15) #0 {
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
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %24, align 4
  %71 = sdiv i32 %69, %70
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %24, align 4
  %74 = sdiv i32 %72, %73
  %75 = mul nsw i32 %71, %74
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %23, align 4
  %78 = mul nsw i32 %76, %77
  %79 = call i32* @make_matrix(i32 %68, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store i32* %79, i32** %80, align 8
  %81 = bitcast %struct.TYPE_16__* %67 to i8*
  %82 = bitcast %struct.TYPE_16__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  store i32 0, i32* %33, align 4
  br label %83

83:                                               ; preds = %195, %16
  %84 = load i32, i32* %33, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %198

87:                                               ; preds = %83
  %88 = load i8**, i8*** %32, align 8
  %89 = load i32, i32* %33, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call { i64, i32 } @load_image_color(i8* %92, i32 0, i32 0)
  store { i64, i32 } %93, { i64, i32 }* %36, align 8
  %94 = bitcast { i64, i32 }* %36 to i8*
  %95 = bitcast %struct.TYPE_18__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 8 %94, i64 12, i1 false)
  %96 = load float, float* %27, align 4
  %97 = load float, float* %28, align 4
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %21, align 4
  %102 = bitcast { i64, i32 }* %38 to i8*
  %103 = bitcast %struct.TYPE_18__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 12, i1 false)
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %105 = load i64, i64* %104, align 4
  %106 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  call void @random_augment_args(%struct.TYPE_20__* sret %37, i64 %105, i32 %107, float %96, float %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = bitcast { i64, i32 }* %40 to i8*
  %123 = bitcast %struct.TYPE_18__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 12, i1 false)
  %124 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %125 = load i64, i64* %124, align 4
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call { i64, i32 } @rotate_crop_image(i64 %125, i32 %127, i32 %109, i32 %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121)
  store { i64, i32 } %128, { i64, i32 }* %41, align 8
  %129 = bitcast { i64, i32 }* %41 to i8*
  %130 = bitcast %struct.TYPE_18__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 8 %129, i64 12, i1 false)
  %131 = call i32 (...) @rand()
  %132 = srem i32 %131, 2
  store i32 %132, i32* %42, align 4
  %133 = load i32, i32* %42, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %87
  %136 = bitcast { i64, i32 }* %43 to i8*
  %137 = bitcast %struct.TYPE_18__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 12, i1 false)
  %138 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %139 = load i64, i64* %138, align 4
  %140 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @flip_image(i64 %139, i32 %141)
  br label %143

143:                                              ; preds = %135, %87
  %144 = load float, float* %29, align 4
  %145 = load float, float* %30, align 4
  %146 = load float, float* %31, align 4
  %147 = bitcast { i64, i32 }* %44 to i8*
  %148 = bitcast %struct.TYPE_18__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 %148, i64 12, i1 false)
  %149 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %150 = load i64, i64* %149, align 4
  %151 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @random_distort_image(i64 %150, i32 %152, float %144, float %145, float %146)
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %33, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load i8**, i8*** %32, align 8
  %163 = load i32, i32* %33, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %23, align 4
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %33, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %22, align 4
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %42, align 4
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %24, align 4
  %183 = sdiv i32 %181, %182
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %24, align 4
  %186 = sdiv i32 %184, %185
  %187 = call i32 @fill_truth_iseg(i8* %166, i32 %167, i32 %174, i32 %175, i32 %177, i32 %179, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %37, i32 %180, i32 %183, i32 %186)
  %188 = bitcast { i64, i32 }* %45 to i8*
  %189 = bitcast %struct.TYPE_18__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %188, i8* align 4 %189, i64 12, i1 false)
  %190 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 0
  %191 = load i64, i64* %190, align 4
  %192 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @free_image(i64 %191, i32 %193)
  br label %195

195:                                              ; preds = %143
  %196 = load i32, i32* %33, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %33, align 4
  br label %83

198:                                              ; preds = %83
  %199 = load i8**, i8*** %32, align 8
  %200 = call i32 @free(i8** %199)
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

declare dso_local i32 @fill_truth_iseg(i8*, i32, i32, i32, i32, i32, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, i32, i32, i32) #1

declare dso_local i32 @free_image(i64, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
