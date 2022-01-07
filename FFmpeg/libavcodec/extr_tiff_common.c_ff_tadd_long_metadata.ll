; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tadd_long_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tadd_long_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%7i\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_tadd_long_metadata(i32 %0, i8* %1, i8* %2, i32* %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* @INT_MAX, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %6
  %27 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %27, i32* %7, align 4
  br label %76

28:                                               ; preds = %23
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @bytestream2_get_bytes_left(i32* %29)
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %37, i32* %7, align 4
  br label %76

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 10, %39
  %41 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %42 = call i32 @av_bprint_init(i32* %14, i32 %40, i32 %41)
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %56, %38
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @auto_sep(i32 %48, i8* %49, i32 %50, i32 8)
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ff_tget_long(i32* %52, i32 %53)
  %55 = call i32 @av_bprintf(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  br label %43

59:                                               ; preds = %43
  %60 = call i32 @av_bprint_finalize(i32* %14, i8** %15)
  store i32 %60, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %7, align 4
  br label %76

64:                                               ; preds = %59
  %65 = load i8*, i8** %15, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %7, align 4
  br label %76

70:                                               ; preds = %64
  %71 = load i32**, i32*** %13, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %75 = call i32 @av_dict_set(i32** %71, i8* %72, i8* %73, i32 %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %70, %67, %62, %36, %26
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i32 @av_bprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @auto_sep(i32, i8*, i32, i32) #1

declare dso_local i32 @ff_tget_long(i32*, i32) #1

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
