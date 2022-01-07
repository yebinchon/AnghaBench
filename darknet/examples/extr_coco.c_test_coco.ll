; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_coco.c_test_coco.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_coco.c_test_coco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { float* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Enter Image Path: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1
@coco_classes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"prediction\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"predictions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_coco(i8* %0, i8* %1, i8* %2, float %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_19__**, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca float, align 4
  %13 = alloca i64, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_19__, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store float %3, float* %8, align 4
  %21 = call %struct.TYPE_19__** (...) @load_alphabet()
  store %struct.TYPE_19__** %21, %struct.TYPE_19__*** %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.TYPE_17__* @load_network(i8* %22, i8* %23, i32 0)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %10, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i64 %32
  %34 = bitcast %struct.TYPE_18__* %11 to i8*
  %35 = bitcast %struct.TYPE_18__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 12, i1 false)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = call i32 @set_batch_network(%struct.TYPE_17__* %36, i32 1)
  %38 = call i32 @srand(i32 2222222)
  store float 0x3FD99999A0000000, float* %12, align 4
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8* %39, i8** %15, align 8
  br label %40

40:                                               ; preds = %4, %139
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strncpy(i8* %44, i8* %45, i32 256)
  br label %60

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fflush(i32 %49)
  %51 = load i8*, i8** %15, align 8
  %52 = load i32, i32* @stdin, align 4
  %53 = call i8* @fgets(i8* %51, i32 256, i32 %52)
  store i8* %53, i8** %15, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %140

57:                                               ; preds = %47
  %58 = load i8*, i8** %15, align 8
  %59 = call i32 @strtok(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %43
  %61 = load i8*, i8** %15, align 8
  %62 = call float* @load_image_color(i8* %61, i32 0, i32 0)
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  store float* %62, float** %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %71 = load float*, float** %70, align 8
  %72 = call float* @resize_image(float* %71, i32 %66, i32 %69)
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store float* %72, float** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %75 = load float*, float** %74, align 8
  store float* %75, float** %18, align 8
  %76 = call i64 (...) @clock()
  store i64 %76, i64* %13, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = load float*, float** %18, align 8
  %79 = call i32 @network_predict(%struct.TYPE_17__* %77, float* %78)
  %80 = load i8*, i8** %15, align 8
  %81 = call i64 (...) @clock()
  %82 = load i64, i64* %13, align 8
  %83 = sub nsw i64 %81, %82
  %84 = call double @sec(i64 %83)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %80, double %84)
  store i32 0, i32* %19, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %87 = load float, float* %8, align 4
  %88 = call i32* @get_network_boxes(%struct.TYPE_17__* %86, i32 1, i32 1, float %87, i32 0, i32 0, i32 0, i32* %19)
  store i32* %88, i32** %20, align 8
  %89 = load float, float* %12, align 4
  %90 = fcmp une float %89, 0.000000e+00
  br i1 %90, label %91, label %105

91:                                               ; preds = %60
  %92 = load i32*, i32** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %94, %96
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %97, %99
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load float, float* %12, align 4
  %104 = call i32 @do_nms_sort(i32* %92, i32 %100, i32 %102, float %103)
  br label %105

105:                                              ; preds = %91, %60
  %106 = load i32*, i32** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %108, %110
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %111, %113
  %115 = load float, float* %8, align 4
  %116 = load i32, i32* @coco_classes, align 4
  %117 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %119 = load float*, float** %118, align 8
  %120 = call i32 @draw_detections(float* %119, i32* %106, i32 %114, float %115, i32 %116, %struct.TYPE_19__** %117, i32 80)
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %122 = load float*, float** %121, align 8
  %123 = call i32 @save_image(float* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %125 = load float*, float** %124, align 8
  %126 = call i32 @show_image(float* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %127 = load i32*, i32** %20, align 8
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @free_detections(i32* %127, i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %131 = load float*, float** %130, align 8
  %132 = call i32 @free_image(float* %131)
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %134 = load float*, float** %133, align 8
  %135 = call i32 @free_image(float* %134)
  %136 = load i8*, i8** %7, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %105
  br label %140

139:                                              ; preds = %105
  br label %40

140:                                              ; preds = %56, %138
  ret void
}

declare dso_local %struct.TYPE_19__** @load_alphabet(...) #1

declare dso_local %struct.TYPE_17__* @load_network(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_batch_network(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local float* @load_image_color(i8*, i32, i32) #1

declare dso_local float* @resize_image(float*, i32, i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @network_predict(%struct.TYPE_17__*, float*) #1

declare dso_local double @sec(i64) #1

declare dso_local i32* @get_network_boxes(%struct.TYPE_17__*, i32, i32, float, i32, i32, i32, i32*) #1

declare dso_local i32 @do_nms_sort(i32*, i32, i32, float) #1

declare dso_local i32 @draw_detections(float*, i32*, i32, float, i32, %struct.TYPE_19__**, i32) #1

declare dso_local i32 @save_image(float*, i8*) #1

declare dso_local i32 @show_image(float*, i8*, i32) #1

declare dso_local i32 @free_detections(i32*, i32) #1

declare dso_local i32 @free_image(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
