; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_videogen.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_videogen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdout = common dso_local global i32 0, align 4
@DEFAULT_WIDTH = common dso_local global i32 0, align 4
@DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@rgb_tab = common dso_local global i32 0, align 4
@wrap = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@DEFAULT_NB_PICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s%02d.pgm\00", align 1

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
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %13, %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @print_help(i8* %19)
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 @freopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* @DEFAULT_WIDTH, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 2
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @print_help(i8* %43)
  br label %45

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* @DEFAULT_HEIGHT, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 3
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @atoi(i8* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @print_help(i8* %60)
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %64, %65
  %67 = mul nsw i32 %66, 3
  %68 = call i32 @malloc(i32 %67)
  store i32 %68, i32* @rgb_tab, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %69, 3
  store i32 %70, i32* @wrap, align 4
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* @width, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* @height, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %102, %63
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @DEFAULT_NB_PICT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @gen_image(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @snprintf(i8* %85, i32 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %89)
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @rgb_tab, align 4
  %95 = call i32 @pgmyuv_save(i8* %91, i32 %92, i32 %93, i32 %94)
  br label %101

96:                                               ; preds = %77
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @rgb_tab, align 4
  %100 = call i32 @pgmyuv_save(i8* null, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %84
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %73

105:                                              ; preds = %73
  %106 = load i32, i32* @rgb_tab, align 4
  %107 = call i32 @free(i32 %106)
  ret i32 0
}

declare dso_local i32 @print_help(i8*) #1

declare dso_local i32 @freopen(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @malloc(i32) #1

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
