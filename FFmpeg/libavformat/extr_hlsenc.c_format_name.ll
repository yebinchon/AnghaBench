; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_format_name.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_format_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%v\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i8*)* @format_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_name(i8* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @av_strdup(i8* %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* @ENOMEM, align 8
  %21 = call i32 @AVERROR(i64 %20)
  store i32 %21, i32* %14, align 4
  br label %86

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @av_stristr(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %12, align 8
  %28 = load i8**, i8*** %7, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %90

30:                                               ; preds = %22
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = load i8**, i8*** %7, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @replace_int_data_in_filename(i8** %34, i8* %35, i8 signext 118, i32 %36)
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @EINVAL, align 8
  %41 = call i32 @AVERROR(i64 %40)
  store i32 %41, i32* %14, align 4
  br label %86

42:                                               ; preds = %33
  br label %53

43:                                               ; preds = %30
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @replace_str_data_in_filename(i8** %44, i8* %45, i8 signext 118, i8* %46)
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* @EINVAL, align 8
  %51 = call i32 @AVERROR(i64 %50)
  store i32 %51, i32* %14, align 4
  br label %86

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i8*, i8** %12, align 8
  %55 = call i8* @avio_find_protocol_name(i8* %54)
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i8* @av_dirname(i8* %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @av_stristr(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %53
  %62 = load i8*, i8** %10, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %64
  %69 = load i8**, i8*** %7, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @av_strdup(i8* %70)
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i8* @av_dirname(i8* %72)
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @ff_mkdir_p(i8* %74)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load i64, i64* @errno, align 8
  %79 = load i64, i64* @EEXIST, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, i64* @errno, align 8
  %83 = call i32 @AVERROR(i64 %82)
  store i32 %83, i32* %14, align 4
  br label %86

84:                                               ; preds = %77, %68
  br label %85

85:                                               ; preds = %84, %64, %61, %53
  br label %86

86:                                               ; preds = %85, %81, %49, %39, %19
  %87 = call i32 @av_freep(i8** %12)
  %88 = call i32 @av_freep(i8** %13)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %26
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i64) #1

declare dso_local i64 @av_stristr(i8*, i8*) #1

declare dso_local i32 @replace_int_data_in_filename(i8**, i8*, i8 signext, i32) #1

declare dso_local i32 @replace_str_data_in_filename(i8**, i8*, i8 signext, i8*) #1

declare dso_local i8* @avio_find_protocol_name(i8*) #1

declare dso_local i8* @av_dirname(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ff_mkdir_p(i8*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
