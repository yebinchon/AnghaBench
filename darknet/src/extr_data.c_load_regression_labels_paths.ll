; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_regression_labels_paths.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_regression_labels_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32** }

@.str = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".BMP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".JPG\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".JPeG\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c".Jpeg\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".PNG\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c".TIF\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c".tif\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @load_regression_labels_paths(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32** @make_matrix(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32** %14, i32*** %15, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %91, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %94

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %27 = call i32 @find_replace(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %30 = call i32 @find_replace(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %33 = call i32 @find_replace(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %36 = call i32 @find_replace(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %39 = call i32 @find_replace(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %42 = call i32 @find_replace(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %45 = call i32 @find_replace(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %48 = call i32 @find_replace(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %51 = call i32 @find_replace(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %54 = call i32 @find_replace(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %57 = call i32 @find_replace(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %60 = call i32 @find_replace(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %62 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %63 = call i32 @find_replace(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %66 = call i32 @find_replace(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %68 = call i32* @fopen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i32* %68, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %85, %20
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @fscanf(i32* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32* %83)
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %69

88:                                               ; preds = %69
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @fclose(i32* %89)
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %16

94:                                               ; preds = %16
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  ret i32** %96
}

declare dso_local i32** @make_matrix(i32, i32) #1

declare dso_local i32 @find_replace(i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
