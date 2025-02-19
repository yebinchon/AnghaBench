; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_get_image_size.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_get_image_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@AV_OPT_TYPE_IMAGE_SIZE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"The value for option '%s' is not an image size.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_opt_get_image_size(i8* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.TYPE_3__* @av_opt_find2(i8* %15, i8* %16, i32* null, i32 0, i32 %17, i8** %13)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %14, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %25, i32* %6, align 4
  br label %65

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AV_OPT_TYPE_IMAGE_SIZE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @av_log(i8* %33, i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %65

39:                                               ; preds = %26
  %40 = load i8*, i8** %13, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %12, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load i8*, i8** %12, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %39
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i8*, i8** %12, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %55
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %32, %24
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_3__* @av_opt_find2(i8*, i8*, i32*, i32, i32, i8**) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
