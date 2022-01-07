; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_attention.c_predict_attention.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_attention.c_predict_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { float* }

@.str = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"data/labels.list\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Enter Image Path: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%5.2f%%: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @predict_attention(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [256 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_11__, align 8
  %21 = alloca %struct.TYPE_11__, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call %struct.TYPE_10__* @load_network(i8* %25, i8* %26, i32 0)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %11, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %29 = call i32 @set_batch_network(%struct.TYPE_10__* %28, i32 1)
  %30 = call i32 @srand(i32 2222222)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32* @read_data_cfg(i8* %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i8* @option_find_str(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* null)
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %5
  %38 = load i32*, i32** %12, align 8
  %39 = call i8* @option_find_str(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %39, i8** %13, align 8
  br label %40

40:                                               ; preds = %37, %5
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @option_find_int(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %40
  store i32 0, i32* %14, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = call i8** @get_labels(i8* %47)
  store i8** %48, i8*** %15, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32* @calloc(i32 %49, i32 4)
  store i32* %50, i32** %17, align 8
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  store i8* %51, i8** %19, align 8
  br label %52

52:                                               ; preds = %46, %163
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8*, i8** %19, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strncpy(i8* %56, i8* %57, i32 256)
  br label %72

59:                                               ; preds = %52
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 @fflush(i32 %61)
  %63 = load i8*, i8** %19, align 8
  %64 = load i32, i32* @stdin, align 4
  %65 = call i8* @fgets(i8* %63, i32 256, i32 %64)
  store i8* %65, i8** %19, align 8
  %66 = load i8*, i8** %19, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %164

69:                                               ; preds = %59
  %70 = load i8*, i8** %19, align 8
  %71 = call i32 @strtok(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %55
  %73 = load i8*, i8** %19, align 8
  %74 = call float* @load_image_color(i8* %73, i32 0, i32 0)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store float* %74, float** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %83 = load float*, float** %82, align 8
  %84 = call float* @letterbox_image(float* %83, i32 %78, i32 %81)
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store float* %84, float** %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %87 = load float*, float** %86, align 8
  store float* %87, float** %22, align 8
  %88 = call i64 (...) @clock()
  store i64 %88, i64* %16, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %90 = load float*, float** %22, align 8
  %91 = call float* @network_predict(%struct.TYPE_10__* %89, float* %90)
  store float* %91, float** %23, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %72
  %97 = load float*, float** %23, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @hierarchy_predictions(float* %97, i32 %100, i32 %103, i32 1, i32 1)
  br label %105

105:                                              ; preds = %96, %72
  %106 = load float*, float** %23, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %17, align 8
  %112 = call i32 @top_k(float* %106, i32 %109, i32 %110, i32* %111)
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** %19, align 8
  %115 = call i64 (...) @clock()
  %116 = load i64, i64* %16, align 8
  %117 = sub nsw i64 %115, %116
  %118 = call double @sec(i64 %117)
  %119 = call i32 @fprintf(i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %114, double %118)
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %143, %105
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %120
  %125 = load i32*, i32** %17, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %24, align 4
  %130 = load float*, float** %23, align 8
  %131 = load i32, i32* %24, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fmul float %134, 1.000000e+02
  %136 = fpext float %135 to double
  %137 = load i8**, i8*** %15, align 8
  %138 = load i32, i32* %24, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), double %136, i8* %141)
  br label %143

143:                                              ; preds = %124
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %120

146:                                              ; preds = %120
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %148 = load float*, float** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %150 = load float*, float** %149, align 8
  %151 = icmp ne float* %148, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %154 = load float*, float** %153, align 8
  %155 = call i32 @free_image(float* %154)
  br label %156

156:                                              ; preds = %152, %146
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %158 = load float*, float** %157, align 8
  %159 = call i32 @free_image(float* %158)
  %160 = load i8*, i8** %9, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %164

163:                                              ; preds = %156
  br label %52

164:                                              ; preds = %68, %162
  ret void
}

declare dso_local %struct.TYPE_10__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local float* @load_image_color(i8*, i32, i32) #1

declare dso_local float* @letterbox_image(float*, i32, i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local float* @network_predict(%struct.TYPE_10__*, float*) #1

declare dso_local i32 @hierarchy_predictions(float*, i32, i32, i32, i32) #1

declare dso_local i32 @top_k(float*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, double) #1

declare dso_local double @sec(i64) #1

declare dso_local i32 @free_image(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
