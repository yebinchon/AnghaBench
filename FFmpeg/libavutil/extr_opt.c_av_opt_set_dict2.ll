; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set_dict2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_set_dict2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error setting option %s to value %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_opt_set_dict2(i8* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32**, i32*** %6, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %58, %14
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %20 = call %struct.TYPE_4__* @av_dict_get(i32* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %18, i32 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %8, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @av_opt_set(i8* %23, i32 %26, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @av_dict_set(i32** %9, i32 %38, i32 %41, i32 0)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %35, %22
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @av_log(i8* %47, i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = call i32 @av_dict_free(i32** %9)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %65

58:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load i32**, i32*** %6, align 8
  %61 = call i32 @av_dict_free(i32** %60)
  %62 = load i32*, i32** %9, align 8
  %63 = load i32**, i32*** %6, align 8
  store i32* %62, i32** %63, align 8
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %46, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_4__* @av_dict_get(i32*, i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @av_opt_set(i8*, i32, i32, i32) #1

declare dso_local i32 @av_dict_set(i32**, i32, i32, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
