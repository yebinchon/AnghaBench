; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_eval_function.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_eval_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 (i32*, i32*, i8*, i32, i8**, i32)*, i32, i32 }

@functions = common dso_local global %struct.TYPE_3__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%%{%s} requires at least %d arguments\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%%{%s} requires at most %d arguments\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%%{%s} is not known\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32, i8**)* @eval_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eval_function(i32* %0, i32* %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %74, %5
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @functions, align 8
  %16 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_3__* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %77

18:                                               ; preds = %13
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @functions, align 8
  %21 = load i32, i32* %12, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strcmp(i8* %19, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %74

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @functions, align 8
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %30, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @functions, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %39, i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %6, align 4
  br label %108

51:                                               ; preds = %29
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @functions, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ugt i32 %52, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %51
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @functions, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %61, i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %6, align 4
  br label %108

73:                                               ; preds = %51
  br label %77

74:                                               ; preds = %28
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %13

77:                                               ; preds = %73, %13
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @functions, align 8
  %80 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_3__* %79)
  %81 = icmp uge i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %83, i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %6, align 4
  br label %108

89:                                               ; preds = %77
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @functions, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32 (i32*, i32*, i8*, i32, i8**, i32)*, i32 (i32*, i32*, i8*, i32, i8**, i32)** %94, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i8**, i8*** %11, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @functions, align 8
  %102 = load i32, i32* %12, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %95(i32* %96, i32* %97, i8* %98, i32 %99, i8** %100, i32 %106)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %89, %82, %60, %38
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
