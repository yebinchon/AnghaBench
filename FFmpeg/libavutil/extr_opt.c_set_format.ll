; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_set_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"The value set by option '%s' is not a %s format\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Value %d for parameter '%s' out of %s format range [%d - %d]\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i8*, i32)* @set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_format(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.TYPE_3__* @av_opt_find2(i8* %20, i8* %21, i32* null, i32 0, i32 %22, i8** %16)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %17, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i8*, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %7
  %30 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %30, i32* %8, align 4
  br label %83

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %38, i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %8, align 4
  br label %83

45:                                               ; preds = %31
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @FFMAX(i32 %48, i32 -1)
  store i32 %49, i32* %18, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = sub nsw i32 %53, 1
  %55 = call i32 @FFMIN(i32 %52, i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59, %45
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  %71 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %64, i32 %65, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %67, i8* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @ERANGE, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %8, align 4
  br label %83

74:                                               ; preds = %59
  %75 = load i32, i32* %11, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %75, i32* %82, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %74, %63, %37, %29
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_3__* @av_opt_find2(i8*, i8*, i32*, i32, i32, i8**) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
