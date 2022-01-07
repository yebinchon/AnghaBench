; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_compare.c_bbox_comparator.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_compare.c_bbox_comparator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@total_compares = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bbox_comparator(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca { i64, i32 }, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @total_compares, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @total_compares, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  %19 = bitcast %struct.TYPE_7__* %6 to i8*
  %20 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 20, i1 false)
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_7__*
  %23 = bitcast %struct.TYPE_7__* %7 to i8*
  %24 = bitcast %struct.TYPE_7__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 20, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %26 = bitcast %struct.TYPE_8__* %8 to i8*
  %27 = bitcast %struct.TYPE_8__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call { i64, i64 } @load_image_color(i32 %31, i32 %33, i32 %35)
  %37 = bitcast %struct.TYPE_9__* %10 to { i64, i64 }*
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 0
  %39 = extractvalue { i64, i64 } %36, 0
  store i64 %39, i64* %38, align 4
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 1
  %41 = extractvalue { i64, i64 } %36, 1
  store i64 %41, i64* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call { i64, i64 } @load_image_color(i32 %43, i32 %45, i32 %47)
  %49 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = extractvalue { i64, i64 } %48, 0
  store i64 %51, i64* %50, align 4
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = extractvalue { i64, i64 } %48, 1
  store i64 %53, i64* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %58, %60
  %62 = call float* @calloc(i32 %61, i32 4)
  store float* %62, float** %12, align 8
  %63 = load float*, float** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %67, %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(float* %63, i32 %65, i32 %76)
  %78 = load float*, float** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %80, %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %78, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %92, %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %95, %97
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memcpy(float* %88, i32 %90, i32 %101)
  %103 = load float*, float** %12, align 8
  %104 = bitcast { i64, i32 }* %14 to i8*
  %105 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 12, i1 false)
  %106 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %107 = load i64, i64* %106, align 4
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call float* @network_predict(i64 %107, i32 %109, float* %103)
  store float* %110, float** %13, align 8
  %111 = bitcast %struct.TYPE_9__* %10 to { i64, i64 }*
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 4
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 1
  %115 = load i64, i64* %114, align 4
  %116 = call i32 @free_image(i64 %113, i64 %115)
  %117 = bitcast %struct.TYPE_9__* %11 to { i64, i64 }*
  %118 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 4
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 1
  %121 = load i64, i64* %120, align 4
  %122 = call i32 @free_image(i64 %119, i64 %121)
  %123 = load float*, float** %12, align 8
  %124 = call i32 @free(float* %123)
  %125 = load float*, float** %13, align 8
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %125, i64 %128
  %130 = load float, float* %129, align 4
  %131 = load float*, float** %13, align 8
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 %132, 2
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %131, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fcmp ogt float %130, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %141

140:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %139
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i64 } @load_image_color(i32, i32, i32) #2

declare dso_local float* @calloc(i32, i32) #2

declare dso_local i32 @memcpy(float*, i32, i32) #2

declare dso_local float* @network_predict(i64, i32, float*) #2

declare dso_local i32 @free_image(i64, i64) #2

declare dso_local i32 @free(float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
