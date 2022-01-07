; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exif.c_exif_add_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exif.c_exif_add_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Invalid TIFF tag type 0 found for %s with size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"TIFF tag type (%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*, i8*, i32*, i32, i32**)* @exif_add_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exif_add_metadata(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32* %5, i32 %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32** %7, i32*** %17, align 8
  %18 = load i32, i32* %12, align 4
  switch i32 %18, label %88 [
    i32 0, label %19
    i32 137, label %25
    i32 130, label %33
    i32 133, label %41
    i32 134, label %49
    i32 138, label %57
    i32 128, label %57
    i32 129, label %65
    i32 131, label %72
    i32 135, label %72
    i32 132, label %80
    i32 136, label %80
  ]

19:                                               ; preds = %8
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* @AV_LOG_WARNING, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @av_log(i8* %20, i32 %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  store i32 0, i32* %9, align 4
  br label %92

25:                                               ; preds = %8
  %26 = load i32, i32* %11, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load i32**, i32*** %17, align 8
  %32 = call i32 @ff_tadd_doubles_metadata(i32 %26, i8* %27, i8* %28, i32* %29, i32 %30, i32** %31)
  store i32 %32, i32* %9, align 4
  br label %92

33:                                               ; preds = %8
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32**, i32*** %17, align 8
  %40 = call i32 @ff_tadd_shorts_metadata(i32 %34, i8* %35, i8* %36, i32* %37, i32 %38, i32 1, i32** %39)
  store i32 %40, i32* %9, align 4
  br label %92

41:                                               ; preds = %8
  %42 = load i32, i32* %11, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load i32**, i32*** %17, align 8
  %48 = call i32 @ff_tadd_shorts_metadata(i32 %42, i8* %43, i8* %44, i32* %45, i32 %46, i32 0, i32** %47)
  store i32 %48, i32* %9, align 4
  br label %92

49:                                               ; preds = %8
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32**, i32*** %17, align 8
  %56 = call i32 @ff_tadd_bytes_metadata(i32 %50, i8* %51, i8* %52, i32* %53, i32 %54, i32 1, i32** %55)
  store i32 %56, i32* %9, align 4
  br label %92

57:                                               ; preds = %8, %8
  %58 = load i32, i32* %11, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32**, i32*** %17, align 8
  %64 = call i32 @ff_tadd_bytes_metadata(i32 %58, i8* %59, i8* %60, i32* %61, i32 %62, i32 0, i32** %63)
  store i32 %64, i32* %9, align 4
  br label %92

65:                                               ; preds = %8
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32**, i32*** %17, align 8
  %71 = call i32 @ff_tadd_string_metadata(i32 %66, i8* %67, i32* %68, i32 %69, i32** %70)
  store i32 %71, i32* %9, align 4
  br label %92

72:                                               ; preds = %8, %8
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32**, i32*** %17, align 8
  %79 = call i32 @ff_tadd_rational_metadata(i32 %73, i8* %74, i8* %75, i32* %76, i32 %77, i32** %78)
  store i32 %79, i32* %9, align 4
  br label %92

80:                                               ; preds = %8, %8
  %81 = load i32, i32* %11, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load i32**, i32*** %17, align 8
  %87 = call i32 @ff_tadd_long_metadata(i32 %81, i8* %82, i8* %83, i32* %84, i32 %85, i32** %86)
  store i32 %87, i32* %9, align 4
  br label %92

88:                                               ; preds = %8
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @avpriv_request_sample(i8* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %88, %80, %72, %65, %57, %49, %41, %33, %25, %19
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @av_log(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ff_tadd_doubles_metadata(i32, i8*, i8*, i32*, i32, i32**) #1

declare dso_local i32 @ff_tadd_shorts_metadata(i32, i8*, i8*, i32*, i32, i32, i32**) #1

declare dso_local i32 @ff_tadd_bytes_metadata(i32, i8*, i8*, i32*, i32, i32, i32**) #1

declare dso_local i32 @ff_tadd_string_metadata(i32, i8*, i32*, i32, i32**) #1

declare dso_local i32 @ff_tadd_rational_metadata(i32, i8*, i8*, i32*, i32, i32**) #1

declare dso_local i32 @ff_tadd_long_metadata(i32, i8*, i8*, i32*, i32, i32**) #1

declare dso_local i32 @avpriv_request_sample(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
