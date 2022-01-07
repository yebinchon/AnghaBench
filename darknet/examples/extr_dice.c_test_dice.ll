; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_dice.c_test_dice.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_dice.c_test_dice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { float* }

@dice_labels = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Enter Image Path: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_dice(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca [6 x i32], align 16
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @parse_network_cfg(i8* %17)
  %19 = bitcast %struct.TYPE_10__* %7 to i64*
  store i64 %18, i64* %19, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @load_weights(%struct.TYPE_10__* %7, i8* %23)
  br label %25

25:                                               ; preds = %22, %3
  %26 = call i32 @set_batch_network(%struct.TYPE_10__* %7, i32 1)
  %27 = call i32 @srand(i32 2222222)
  store i32 0, i32* %8, align 4
  %28 = load i8**, i8*** @dice_labels, align 8
  store i8** %28, i8*** %9, align 8
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %25, %98
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strncpy(i8* %34, i8* %35, i32 256)
  br label %50

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fflush(i32 %39)
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* @stdin, align 4
  %43 = call i8* @fgets(i8* %41, i32 256, i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %99

47:                                               ; preds = %37
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @strtok(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %33
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call float* @load_image_color(i8* %51, i32 %53, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store float* %56, float** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %59 = load float*, float** %58, align 8
  store float* %59, float** %14, align 8
  %60 = load float*, float** %14, align 8
  %61 = bitcast %struct.TYPE_10__* %7 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call float* @network_predict(i64 %62, float* %60)
  store float* %63, float** %15, align 8
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %65 = bitcast %struct.TYPE_10__* %7 to i64*
  %66 = load i64, i64* %65, align 4
  %67 = call i32 @top_predictions(i64 %66, i32 6, i32* %64)
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %88, %50
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 6
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %16, align 4
  %76 = load i8**, i8*** %9, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load float*, float** %15, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fpext float %85 to double
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %80, double %86)
  br label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %68

91:                                               ; preds = %68
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %93 = load float*, float** %92, align 8
  %94 = call i32 @free_image(float* %93)
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %99

98:                                               ; preds = %91
  br label %30

99:                                               ; preds = %46, %97
  ret void
}

declare dso_local i64 @parse_network_cfg(i8*) #1

declare dso_local i32 @load_weights(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local float* @load_image_color(i8*, i32, i32) #1

declare dso_local float* @network_predict(i64, float*) #1

declare dso_local i32 @top_predictions(i64, i32, i32*) #1

declare dso_local i32 @free_image(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
