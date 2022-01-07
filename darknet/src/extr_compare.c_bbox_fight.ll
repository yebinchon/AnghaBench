; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_compare.c_bbox_fight.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_compare.c_bbox_fight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@total_compares = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bbox_fight(i64 %0, i32 %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca %struct.TYPE_14__, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %20, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %21, align 4
  %22 = bitcast %struct.TYPE_13__* %7 to i8*
  %23 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call { i64, i64 } @load_image_color(i32 %26, i32 %28, i32 %30)
  %32 = bitcast %struct.TYPE_14__* %13 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = extractvalue { i64, i64 } %31, 0
  store i64 %34, i64* %33, align 4
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = extractvalue { i64, i64 } %31, 1
  store i64 %36, i64* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call { i64, i64 } @load_image_color(i32 %39, i32 %41, i32 %43)
  %45 = bitcast %struct.TYPE_14__* %14 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = extractvalue { i64, i64 } %44, 0
  store i64 %47, i64* %46, align 4
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = extractvalue { i64, i64 } %44, 1
  store i64 %49, i64* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %54, %56
  %58 = call float* @calloc(i32 %57, i32 4)
  store float* %58, float** %15, align 8
  %59 = load float*, float** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %63, %65
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(float* %59, i32 %61, i32 %72)
  %74 = load float*, float** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %76, %78
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %74, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %88, %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %91, %93
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memcpy(float* %84, i32 %86, i32 %97)
  %99 = load float*, float** %15, align 8
  %100 = bitcast { i64, i32 }* %17 to i8*
  %101 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 12, i1 false)
  %102 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %103 = load i64, i64* %102, align 4
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call float* @network_predict(i64 %103, i32 %105, float* %99)
  store float* %106, float** %16, align 8
  %107 = load i32, i32* @total_compares, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @total_compares, align 4
  store i32 0, i32* %18, align 4
  br label %109

109:                                              ; preds = %142, %6
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %145

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %116, %113
  %121 = load float*, float** %16, align 8
  %122 = load i32, i32* %18, align 4
  %123 = mul nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %121, i64 %124
  %126 = load float, float* %125, align 4
  %127 = load float*, float** %16, align 8
  %128 = load i32, i32* %18, align 4
  %129 = mul nsw i32 %128, 2
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %127, i64 %131
  %133 = load float, float* %132, align 4
  %134 = fcmp ogt float %126, %133
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %19, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %19, align 4
  %140 = call i32 @bbox_update(%struct.TYPE_12__* %136, %struct.TYPE_12__* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %120, %116
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %18, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %18, align 4
  br label %109

145:                                              ; preds = %109
  %146 = bitcast %struct.TYPE_14__* %13 to { i64, i64 }*
  %147 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 4
  %149 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %146, i32 0, i32 1
  %150 = load i64, i64* %149, align 4
  %151 = call i32 @free_image(i64 %148, i64 %150)
  %152 = bitcast %struct.TYPE_14__* %14 to { i64, i64 }*
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 4
  %155 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 1
  %156 = load i64, i64* %155, align 4
  %157 = call i32 @free_image(i64 %154, i64 %156)
  %158 = load float*, float** %15, align 8
  %159 = call i32 @free(float* %158)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i64 } @load_image_color(i32, i32, i32) #2

declare dso_local float* @calloc(i32, i32) #2

declare dso_local i32 @memcpy(float*, i32, i32) #2

declare dso_local float* @network_predict(i64, i32, float*) #2

declare dso_local i32 @bbox_update(%struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @free_image(i64, i64) #2

declare dso_local i32 @free(float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
