; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_get_segmentation_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_get_segmentation_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".JPG\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_segmentation_image(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [32788 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %19 = call i32 @find_replace(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %22 = call i32 @find_replace(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %25 = call i32 @find_replace(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %28 = call i32 @find_replace(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %31 = call i32 @find_replace(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @make_image(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %37 = call i32* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %42 = call i32 @file_error(i8* %41)
  br label %43

43:                                               ; preds = %40, %4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @make_image(i32 %44, i32 %45, i32 1)
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %52, %43
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds [32788 x i8], [32788 x i8]* %12, i64 0, i64 0
  %50 = call i32 @fscanf(i32* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %13, i8* %49)
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  store i32 0, i32* %15, align 4
  %53 = getelementptr inbounds [32788 x i8], [32788 x i8]* %12, i64 0, i64 0
  %54 = call i32* @read_intlist(i8* %53, i32* %15, i32 0)
  store i32* %54, i32** %16, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @load_rle(i32 %55, i32* %56, i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @or_image(i32 %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %16, align 8
  %64 = call i32 @free(i32* %63)
  br label %47

65:                                               ; preds = %47
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @fclose(i32* %66)
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @free_image(i32 %68)
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @find_replace(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @make_image(i32, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, i8*) #1

declare dso_local i32* @read_intlist(i8*, i32*, i32) #1

declare dso_local i32 @load_rle(i32, i32*, i32) #1

declare dso_local i32 @or_image(i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free_image(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
