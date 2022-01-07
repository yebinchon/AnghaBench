; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_tree.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_tree.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_INFO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"FATAL error %d\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"inserting %4d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Memory allocation failure.\0A\00", align 1
@cmp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"removing %4d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"removal failure %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @AV_LOG_INFO, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* %21)
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %18 ]
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @av_log_set_level(i32 %25)
  %27 = call i32 @av_lfg_init(i32* %10, i32 1)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %92, %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 10000
  br i1 %30, label %31, label %95

31:                                               ; preds = %28
  %32 = call i32 @av_lfg_get(i32* %10)
  %33 = srem i32 %32, 86294
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @check(i32* %35)
  %37 = icmp sgt i32 %36, 999
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @print(i32* %42, i32 0)
  store i32 1, i32* %3, align 4
  br label %100

44:                                               ; preds = %31
  %45 = load i32, i32* @AV_LOG_DEBUG, align 4
  %46 = load i64, i64* %12, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = call i32* (...) @av_tree_node_alloc()
  store i32* %52, i32** %9, align 8
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %100

59:                                               ; preds = %53
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %60, 1
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32, i32* @cmp, align 4
  %64 = call i32 @av_tree_insert(i32** %8, i8* %62, i32 %63, i32** %9)
  %65 = call i32 @av_lfg_get(i32* %10)
  %66 = srem i32 %65, 86294
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %68 = load i32, i32* @AV_LOG_DEBUG, align 4
  %69 = load i64, i64* %12, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, 1
  %74 = inttoptr i64 %73 to i8*
  %75 = load i32, i32* @cmp, align 4
  %76 = call i32 @av_tree_insert(i32** %8, i8* %74, i32 %75, i32** %13)
  %77 = load i32*, i32** %8, align 8
  %78 = load i64, i64* %12, align 8
  %79 = add nsw i64 %78, 1
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* @cmp, align 4
  %82 = call i8* @av_tree_find(i32* %77, i8* %80, i32 %81, i32* null)
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %59
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %59
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @av_free(i32* %90)
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %28

95:                                               ; preds = %28
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @av_free(i32* %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @av_tree_destroy(i32* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %56, %38
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @av_log_set_level(i32) #1

declare dso_local i32 @av_lfg_init(i32*, i32) #1

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32 @check(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @print(i32*, i32) #1

declare dso_local i32* @av_tree_node_alloc(...) #1

declare dso_local i32 @av_tree_insert(i32**, i8*, i32, i32**) #1

declare dso_local i8* @av_tree_find(i32*, i8*, i32, i32*) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @av_tree_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
