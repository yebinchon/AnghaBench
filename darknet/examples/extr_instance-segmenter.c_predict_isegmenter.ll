; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_instance-segmenter.c_predict_isegmenter.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_instance-segmenter.c_predict_isegmenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { float* }

@.str = private unnamed_addr constant [19 x i8] c"Enter Image Path: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Predicted: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"orig\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pred\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @predict_isegmenter(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca %struct.TYPE_16__, align 8
  %18 = alloca %struct.TYPE_16__, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.TYPE_15__* @load_network(i8* %19, i8* %20, i32 0)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %9, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %23 = call i32 @set_batch_network(%struct.TYPE_15__* %22, i32 1)
  %24 = call i32 @srand(i32 2222222)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8* %25, i8** %12, align 8
  br label %26

26:                                               ; preds = %4, %102
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strncpy(i8* %30, i8* %31, i32 256)
  br label %46

33:                                               ; preds = %26
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 @fflush(i32 %35)
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @stdin, align 4
  %39 = call i8* @fgets(i8* %37, i32 256, i32 %38)
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %103

43:                                               ; preds = %33
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @strtok(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %29
  %47 = load i8*, i8** %12, align 8
  %48 = call float* @load_image_color(i8* %47, i32 0, i32 0)
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store float* %48, float** %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %57 = load float*, float** %56, align 8
  %58 = call float* @letterbox_image(float* %57, i32 %52, i32 %55)
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store float* %58, float** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %61 = load float*, float** %60, align 8
  store float* %61, float** %15, align 8
  %62 = call i64 (...) @clock()
  store i64 %62, i64* %10, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = load float*, float** %15, align 8
  %65 = call float* @network_predict(%struct.TYPE_15__* %63, float* %64)
  store float* %65, float** %16, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = call float* @get_network_image(%struct.TYPE_15__* %66)
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store float* %67, float** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %70 = load float*, float** %69, align 8
  %71 = call float* @mask_to_rgb(float* %70)
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store float* %71, float** %72, align 8
  %73 = load float*, float** %16, align 8
  %74 = getelementptr inbounds float, float* %73, i64 0
  %75 = load float, float* %74, align 4
  %76 = fpext float %75 to double
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), double %76)
  %78 = load i8*, i8** %12, align 8
  %79 = call i64 (...) @clock()
  %80 = load i64, i64* %10, align 8
  %81 = sub nsw i64 %79, %80
  %82 = call double @sec(i64 %81)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %78, double %82)
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %85 = load float*, float** %84, align 8
  %86 = call i32 @show_image(float* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %88 = load float*, float** %87, align 8
  %89 = call i32 @show_image(float* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %91 = load float*, float** %90, align 8
  %92 = call i32 @free_image(float* %91)
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %94 = load float*, float** %93, align 8
  %95 = call i32 @free_image(float* %94)
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %97 = load float*, float** %96, align 8
  %98 = call i32 @free_image(float* %97)
  %99 = load i8*, i8** %8, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %46
  br label %103

102:                                              ; preds = %46
  br label %26

103:                                              ; preds = %42, %101
  ret void
}

declare dso_local %struct.TYPE_15__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local float* @load_image_color(i8*, i32, i32) #1

declare dso_local float* @letterbox_image(float*, i32, i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local float* @network_predict(%struct.TYPE_15__*, float*) #1

declare dso_local float* @get_network_image(%struct.TYPE_15__*) #1

declare dso_local float* @mask_to_rgb(float*) #1

declare dso_local double @sec(i64) #1

declare dso_local i32 @show_image(float*, i8*, i32) #1

declare dso_local i32 @free_image(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
