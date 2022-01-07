; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_image_augment_paths.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_image_augment_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32* } @load_image_augment_paths(i8** %0, i32 %1, i32 %2, i32 %3, i32 %4, float %5, float %6, float %7, float %8, float %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_13__, align 4
  %26 = alloca %struct.TYPE_13__, align 4
  %27 = alloca %struct.TYPE_13__, align 4
  %28 = alloca %struct.TYPE_13__, align 4
  %29 = alloca i32, align 4
  store i8** %0, i8*** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store float %5, float* %18, align 4
  store float %6, float* %19, align 4
  store float %7, float* %20, align 4
  store float %8, float* %21, align 4
  store float %9, float* %22, align 4
  store i32 %10, i32* %23, align 4
  %30 = load i32, i32* %14, align 4
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @calloc(i32 %33, i32 8)
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store i32* %34, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i32 0, i32* %36, align 4
  store i32 0, i32* %24, align 4
  br label %37

37:                                               ; preds = %135, %11
  %38 = load i32, i32* %24, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %138

41:                                               ; preds = %37
  %42 = load i8**, i8*** %13, align 8
  %43 = load i32, i32* %24, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call { i64, i64 } @load_image_color(i8* %46, i32 0, i32 0)
  %48 = bitcast %struct.TYPE_13__* %25 to { i64, i64 }*
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0
  %50 = extractvalue { i64, i64 } %47, 0
  store i64 %50, i64* %49, align 4
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1
  %52 = extractvalue { i64, i64 } %47, 1
  store i64 %52, i64* %51, align 4
  %53 = load i32, i32* %23, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %41
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = bitcast %struct.TYPE_13__* %25 to { i64, i64 }*
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 4
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 1
  %62 = load i64, i64* %61, align 4
  %63 = call { i64, i64 } @center_crop_image(i64 %60, i64 %62, i32 %56, i32 %57)
  %64 = bitcast %struct.TYPE_13__* %27 to { i64, i64 }*
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 0
  %66 = extractvalue { i64, i64 } %63, 0
  store i64 %66, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 1
  %68 = extractvalue { i64, i64 } %63, 1
  store i64 %68, i64* %67, align 4
  %69 = bitcast %struct.TYPE_13__* %26 to i8*
  %70 = bitcast %struct.TYPE_13__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 16, i1 false)
  br label %91

71:                                               ; preds = %41
  %72 = load float, float* %18, align 4
  %73 = load float, float* %19, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = bitcast %struct.TYPE_13__* %25 to { i64, i64 }*
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 4
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 1
  %82 = load i64, i64* %81, align 4
  %83 = call { i64, i64 } @random_augment_image(i64 %80, i64 %82, float %72, float %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %84 = bitcast %struct.TYPE_13__* %28 to { i64, i64 }*
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 0
  %86 = extractvalue { i64, i64 } %83, 0
  store i64 %86, i64* %85, align 4
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 1
  %88 = extractvalue { i64, i64 } %83, 1
  store i64 %88, i64* %87, align 4
  %89 = bitcast %struct.TYPE_13__* %26 to i8*
  %90 = bitcast %struct.TYPE_13__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 16, i1 false)
  br label %91

91:                                               ; preds = %71, %55
  %92 = call i32 (...) @rand()
  %93 = srem i32 %92, 2
  store i32 %93, i32* %29, align 4
  %94 = load i32, i32* %29, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = bitcast %struct.TYPE_13__* %26 to { i64, i64 }*
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 4
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 1
  %101 = load i64, i64* %100, align 4
  %102 = call i32 @flip_image(i64 %99, i64 %101)
  br label %103

103:                                              ; preds = %96, %91
  %104 = load float, float* %20, align 4
  %105 = load float, float* %21, align 4
  %106 = load float, float* %22, align 4
  %107 = bitcast %struct.TYPE_13__* %26 to { i64, i64 }*
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 1
  %111 = load i64, i64* %110, align 4
  %112 = call i32 @random_distort_image(i64 %109, i64 %111, float %104, float %105, float %106)
  %113 = bitcast %struct.TYPE_13__* %25 to { i64, i64 }*
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 4
  %116 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 1
  %117 = load i64, i64* %116, align 4
  %118 = call i32 @free_image(i64 %115, i64 %117)
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %24, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %120, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %127, %129
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %130, %132
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %103
  %136 = load i32, i32* %24, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %24, align 4
  br label %37

138:                                              ; preds = %37
  %139 = bitcast %struct.TYPE_12__* %12 to { i64, i32* }*
  %140 = load { i64, i32* }, { i64, i32* }* %139, align 8
  ret { i64, i32* } %140
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local { i64, i64 } @load_image_color(i8*, i32, i32) #1

declare dso_local { i64, i64 } @center_crop_image(i64, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i64 } @random_augment_image(i64, i64, float, float, i32, i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @flip_image(i64, i64) #1

declare dso_local i32 @random_distort_image(i64, i64, float, float, float) #1

declare dso_local i32 @free_image(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
