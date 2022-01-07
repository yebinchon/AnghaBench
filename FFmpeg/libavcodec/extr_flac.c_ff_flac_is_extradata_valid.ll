; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac.c_ff_flac_is_extradata_valid.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac.c_ff_flac_is_extradata_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@FLAC_STREAMINFO_SIZE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"extradata NULL or too small.\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"extradata contains %d bytes too many.\0A\00", align 1
@FLAC_EXTRADATA_FORMAT_STREAMINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"extradata too small.\0A\00", align 1
@FLAC_EXTRADATA_FORMAT_FULL_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_flac_is_extradata_valid(%struct.TYPE_4__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FLAC_STREAMINFO_SIZE, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %19, i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %71

22:                                               ; preds = %12
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @AV_RL32(i32* %25)
  %27 = call i64 @MKTAG(float 1.020000e+02, i8 signext 76, i8 signext 97, i8 signext 67)
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FLAC_STREAMINFO_SIZE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = load i32, i32* @AV_LOG_WARNING, align 4
  %38 = load i64, i64* @FLAC_STREAMINFO_SIZE, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %36, i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i32, i32* @FLAC_EXTRADATA_FORMAT_STREAMINFO, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32**, i32*** %7, align 8
  store i32* %49, i32** %50, align 8
  br label %70

51:                                               ; preds = %22
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FLAC_STREAMINFO_SIZE, align 8
  %56 = add nsw i64 8, %55
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %59, i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %71

62:                                               ; preds = %51
  %63 = load i32, i32* @FLAC_EXTRADATA_FORMAT_FULL_HEADER, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load i32**, i32*** %7, align 8
  store i32* %68, i32** %69, align 8
  br label %70

70:                                               ; preds = %62, %44
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %58, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local i64 @AV_RL32(i32*) #1

declare dso_local i64 @MKTAG(float, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
