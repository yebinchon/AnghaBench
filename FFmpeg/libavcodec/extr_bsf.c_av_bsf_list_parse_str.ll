; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bsf.c_av_bsf_list_parse_str.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bsf.c_av_bsf_list_parse_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_bsf_list_parse_str(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32**, i32*** %5, align 8
  %16 = call i32 @av_bsf_get_null_filter(i32** %15)
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = call i32* (...) @av_bsf_list_alloc()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %58

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @av_strdup(i8* %25)
  store i8* %26, i8** %8, align 8
  store i8* %26, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %11, align 4
  br label %49

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %45
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @av_strtok(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %46

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @bsf_parse_single(i8* %39, i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %49

45:                                               ; preds = %38
  store i8* null, i8** %8, align 8
  br label %32

46:                                               ; preds = %37
  %47 = load i32**, i32*** %5, align 8
  %48 = call i32 @av_bsf_list_finalize(i32** %6, i32** %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %44, %28
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @av_bsf_list_free(i32** %6)
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @av_free(i8* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %21, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @av_bsf_get_null_filter(i32**) #1

declare dso_local i32* @av_bsf_list_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @bsf_parse_single(i8*, i32*) #1

declare dso_local i32 @av_bsf_list_finalize(i32**, i32**) #1

declare dso_local i32 @av_bsf_list_free(i32**) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
