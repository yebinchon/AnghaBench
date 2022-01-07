; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tadd_string_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tadd_string_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_tadd_string_metadata(i32 %0, i8* %1, i32* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %5
  %21 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %21, i32* %6, align 4
  br label %45

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i8* @av_malloc(i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load i32*, i32** %9, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @bytestream2_get_bufferu(i32* %32, i8* %33, i32 %34)
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i32**, i32*** %11, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %44 = call i32 @av_dict_set(i32** %40, i8* %41, i8* %42, i32 %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %31, %28, %20
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @bytestream2_get_bufferu(i32*, i8*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
