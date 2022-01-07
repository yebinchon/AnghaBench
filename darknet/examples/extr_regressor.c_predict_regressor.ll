; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_regressor.c_predict_regressor.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_regressor.c_predict_regressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { float* }

@.str = private unnamed_addr constant [19 x i8] c"Enter Image Path: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Predicted: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @predict_regressor(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.TYPE_10__* @load_network(i8* %15, i8* %16, i32 0)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = call i32 @set_batch_network(%struct.TYPE_10__* %18, i32 1)
  %20 = call i32 @srand(i32 2222222)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %3, %82
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strncpy(i8* %26, i8* %27, i32 256)
  br label %42

29:                                               ; preds = %22
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fflush(i32 %31)
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* @stdin, align 4
  %35 = call i8* @fgets(i8* %33, i32 256, i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %83

39:                                               ; preds = %29
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @strtok(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %25
  %43 = load i8*, i8** %10, align 8
  %44 = call float* @load_image_color(i8* %43, i32 0, i32 0)
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store float* %44, float** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %53 = load float*, float** %52, align 8
  %54 = call float* @letterbox_image(float* %53, i32 %48, i32 %51)
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store float* %54, float** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %57 = load float*, float** %56, align 8
  store float* %57, float** %13, align 8
  %58 = call i64 (...) @clock()
  store i64 %58, i64* %8, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = load float*, float** %13, align 8
  %61 = call float* @network_predict(%struct.TYPE_10__* %59, float* %60)
  store float* %61, float** %14, align 8
  %62 = load float*, float** %14, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), double %65)
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 (...) @clock()
  %69 = load i64, i64* %8, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call double @sec(i64 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %67, double %71)
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %74 = load float*, float** %73, align 8
  %75 = call i32 @free_image(float* %74)
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %77 = load float*, float** %76, align 8
  %78 = call i32 @free_image(float* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %42
  br label %83

82:                                               ; preds = %42
  br label %22

83:                                               ; preds = %38, %81
  ret void
}

declare dso_local %struct.TYPE_10__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local float* @load_image_color(i8*, i32, i32) #1

declare dso_local float* @letterbox_image(float*, i32, i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local float* @network_predict(%struct.TYPE_10__*, float*) #1

declare dso_local double @sec(i64) #1

declare dso_local i32 @free_image(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
