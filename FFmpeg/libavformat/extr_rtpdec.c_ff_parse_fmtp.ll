; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_ff_parse_fmtp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_ff_parse_fmtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate data for FMTP.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_parse_fmtp(i32* %0, i32* %1, i32* %2, i8* %3, i32 (i32*, i32*, i32*, i8*, i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i32*, i32*, i32*, i8*, i8*)*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 (i32*, i32*, i32*, i8*, i8*)* %4, i32 (i32*, i32*, i32*, i8*, i8*)** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = call i8* @av_malloc(i32 %19)
  store i8* %20, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = call i32 @av_log(i32* %23, i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %6, align 4
  br label %105

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 32
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  br label %29

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 32
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ false, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %10, align 8
  br label %45

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 32
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i1 [ false, %61 ], [ %70, %66 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %10, align 8
  br label %61

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %101, %76
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @ff_rtsp_next_attr_and_value(i8** %10, i8* %78, i32 256, i8* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load i32 (i32*, i32*, i32*, i8*, i8*)*, i32 (i32*, i32*, i32*, i8*, i8*)** %11, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 %84(i32* %85, i32* %86, i32* %87, i8* %88, i8* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @av_free(i8* %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %105

101:                                              ; preds = %93, %83
  br label %77

102:                                              ; preds = %77
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @av_free(i8* %103)
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %102, %97, %22
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @ff_rtsp_next_attr_and_value(i8**, i8*, i32, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
