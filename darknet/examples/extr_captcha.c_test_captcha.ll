; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_captcha.c_test_captcha.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_captcha.c_test_captcha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { float* }

@.str = private unnamed_addr constant [33 x i8] c"/data/captcha/reimgs.labels.list\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %f\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_captcha(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca [26 x i32], align 16
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.TYPE_9__* @load_network(i8* %17, i8* %18, i32 0)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = call i32 @set_batch_network(%struct.TYPE_9__* %20, i32 1)
  %22 = call i32 @srand(i32 2222222)
  store i32 0, i32* %8, align 4
  %23 = call i8** @get_labels(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8** %23, i8*** %9, align 8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8* %24, i8** %11, align 8
  br label %25

25:                                               ; preds = %3, %98
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strncpy(i8* %29, i8* %30, i32 256)
  br label %42

32:                                               ; preds = %25
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* @stdin, align 4
  %35 = call i8* @fgets(i8* %33, i32 256, i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %99

39:                                               ; preds = %32
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strtok(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %28
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call float* @load_image_color(i8* %43, i32 %46, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store float* %50, float** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %53 = load float*, float** %52, align 8
  store float* %53, float** %14, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = load float*, float** %14, align 8
  %56 = call float* @network_predict(%struct.TYPE_9__* %54, float* %55)
  store float* %56, float** %15, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds [26 x i32], [26 x i32]* %12, i64 0, i64 0
  %59 = call i32 @top_predictions(%struct.TYPE_9__* %57, i32 26, i32* %58)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %85, %42
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 26
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [26 x i32], [26 x i32]* %12, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i8**, i8*** %9, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load float*, float** %15, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = fpext float %82 to double
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %77, double %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %60

88:                                               ; preds = %60
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 @fflush(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %93 = load float*, float** %92, align 8
  %94 = call i32 @free_image(float* %93)
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %99

98:                                               ; preds = %88
  br label %25

99:                                               ; preds = %38, %97
  ret void
}

declare dso_local %struct.TYPE_9__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local float* @load_image_color(i8*, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_9__*, float*) #1

declare dso_local i32 @top_predictions(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @free_image(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
