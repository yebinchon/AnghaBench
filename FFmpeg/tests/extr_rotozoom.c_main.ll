; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_rotozoom.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_rotozoom.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"usage: %s image.pnm file|dir\0Agenerate a test video stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdout = common dso_local global i32 0, align 4
@DEFAULT_WIDTH = common dso_local global i32 0, align 4
@DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@rgb_tab = common dso_local global i32 0, align 4
@wrap = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@DEFAULT_NB_PICT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s%02d.pgm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 1, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @freopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* @DEFAULT_WIDTH, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @DEFAULT_HEIGHT, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  %32 = mul nsw i32 %31, 3
  %33 = call i32 @malloc(i32 %32)
  store i32 %33, i32* @rgb_tab, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 3
  store i32 %35, i32* @wrap, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* @width, align 4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* @height, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @init_demo(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %80

44:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %74, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @DEFAULT_NB_PICT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @gen_image(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 2
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @snprintf(i8* %57, i32 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %60, i32 %61)
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @rgb_tab, align 4
  %67 = call i32 @pgmyuv_save(i8* %63, i32 %64, i32 %65, i32 %66)
  br label %73

68:                                               ; preds = %49
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @rgb_tab, align 4
  %72 = call i32 @pgmyuv_save(i8* null, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %45

77:                                               ; preds = %45
  %78 = load i32, i32* @rgb_tab, align 4
  %79 = call i32 @free(i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %43, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @freopen(i8*, i8*, i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i64 @init_demo(i8*) #1

declare dso_local i32 @gen_image(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @pgmyuv_save(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
