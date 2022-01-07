; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_captcha.c_valid_captcha.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_captcha.c_valid_captcha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { float* }

@.str = private unnamed_addr constant [33 x i8] c"/data/captcha/reimgs.labels.list\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"/data/captcha/reimgs.fg.list\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bad: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @valid_captcha(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = call i8** @get_labels(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8** %19, i8*** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.TYPE_11__* @load_network(i8* %20, i8* %21, i32 0)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %8, align 8
  %23 = call %struct.TYPE_12__* @get_paths(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %9, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = call i64 @list_to_array(%struct.TYPE_12__* %24)
  %26 = inttoptr i64 %25 to i8**
  store i8** %26, i8*** %10, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = call i32 @set_batch_network(%struct.TYPE_11__* %33, i32 1)
  %35 = call i32 @srand(i32 2222222)
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %134, %3
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %137

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = srem i32 %41, 100
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i8**, i8*** %10, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call float* @load_image_color(i8* %53, i32 %56, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store float* %60, float** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %63 = load float*, float** %62, align 8
  store float* %63, float** %16, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = load float*, float** %16, align 8
  %66 = call float* @network_predict(%struct.TYPE_11__* %64, float* %65)
  store float* %66, float** %17, align 8
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %86, %48
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 13
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load i8**, i8*** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** %7, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strstr(i8* %75, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %18, align 4
  br label %85

85:                                               ; preds = %83, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %67

89:                                               ; preds = %67
  %90 = load i32, i32* %18, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8**, i8*** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  br label %137

100:                                              ; preds = %89
  %101 = load i32, i32* %18, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %120, %100
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %107
  %113 = load float*, float** %17, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = fpext float %117 to double
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), double %118)
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %103

123:                                              ; preds = %103
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i32, i32* @stdout, align 4
  %126 = call i32 @fflush(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %128 = load float*, float** %127, align 8
  %129 = call i32 @free_image(float* %128)
  %130 = load i8*, i8** %6, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %137

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %36

137:                                              ; preds = %92, %132, %36
  ret void
}

declare dso_local i8** @get_labels(i8*) #1

declare dso_local %struct.TYPE_11__* @load_network(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_12__*) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local float* @load_image_color(i8*, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_11__*, float*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @free_image(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
