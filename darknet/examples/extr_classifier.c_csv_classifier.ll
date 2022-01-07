; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_classifier.c_csv_classifier.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_classifier.c_csv_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"data/test.list\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\09%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"%lf seconds, %d images, %d total\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csv_classifier(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca double, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_18__, align 4
  %20 = alloca %struct.TYPE_18__, align 4
  %21 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.TYPE_16__* @load_network(i8* %22, i8* %23, i32 0)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %9, align 8
  %25 = call i32 @time(i32 0)
  %26 = call i32 @srand(i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call %struct.TYPE_17__* @read_data_cfg(i8* %27)
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %10, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = call i8* @option_find_str(%struct.TYPE_17__* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %11, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = call i32 @option_find_int(%struct.TYPE_17__* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %32, i32* %12, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = call %struct.TYPE_17__* @get_paths(i8* %33)
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %13, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %36 = call i64 @list_to_array(%struct.TYPE_17__* %35)
  %37 = inttoptr i64 %36 to i8**
  store i8** %37, i8*** %14, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %42 = call i32 @free_list(%struct.TYPE_17__* %41)
  %43 = load i32, i32* %12, align 4
  %44 = call i32* @calloc(i32 %43, i32 4)
  store i32* %44, i32** %16, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %126, %3
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %129

49:                                               ; preds = %45
  %50 = call double (...) @what_time_is_it_now()
  store double %50, double* %17, align 8
  %51 = load i8**, i8*** %14, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %18, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = call i32 @load_image_color(i8* %56, i32 0, i32 0)
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @letterbox_image(i32 %66, i32 %61, i32 %64)
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call float* @network_predict(%struct.TYPE_16__* %69, i32 %71)
  store float* %72, float** %21, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %49
  %78 = load float*, float** %21, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @hierarchy_predictions(float* %78, i32 %81, i32 %84, i32 1, i32 1)
  br label %86

86:                                               ; preds = %77, %49
  %87 = load float*, float** %21, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @top_k(float* %87, i32 %90, i32 %91, i32* %92)
  %94 = load i8*, i8** %18, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %107, %86
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %96

110:                                              ; preds = %96
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @free_image(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @free_image(i32 %116)
  %118 = load i32, i32* @stderr, align 4
  %119 = call double (...) @what_time_is_it_now()
  %120 = load double, double* %17, align 8
  %121 = fsub double %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @fprintf(i32 %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), double %121, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %110
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %45

129:                                              ; preds = %45
  ret void
}

declare dso_local %struct.TYPE_16__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_17__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_17__*, i8*, i8*) #1

declare dso_local i32 @option_find_int(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local %struct.TYPE_17__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_17__*) #1

declare dso_local i32 @free_list(%struct.TYPE_17__*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @load_image_color(i8*, i32, i32) #1

declare dso_local i32 @letterbox_image(i32, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @hierarchy_predictions(float*, i32, i32, i32, i32) #1

declare dso_local i32 @top_k(float*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free_image(i32) #1

declare dso_local i32 @fprintf(i32, i8*, double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
