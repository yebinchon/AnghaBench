; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_help.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_callback_help = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"demuxer\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"muxer\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bsf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_help(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @log_callback_help, align 4
  %11 = call i32 @av_log_set_callback(i32 %10)
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i8* [ %15, %14 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %16 ]
  %19 = call i8* @av_strdup(i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %87

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 61)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  store i8 0, i8* %31, align 1
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @show_help_default(i8* %38, i8* %39)
  br label %85

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @show_help_codec(i8* %46, i32 0)
  br label %84

48:                                               ; preds = %41
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @show_help_codec(i8* %53, i32 1)
  br label %83

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @show_help_demuxer(i8* %60)
  br label %82

62:                                               ; preds = %55
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @show_help_muxer(i8* %67)
  br label %81

69:                                               ; preds = %62
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @show_help_bsf(i8* %74)
  br label %80

76:                                               ; preds = %69
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @show_help_default(i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %59
  br label %83

83:                                               ; preds = %82, %52
  br label %84

84:                                               ; preds = %83, %45
  br label %85

85:                                               ; preds = %84, %37
  %86 = call i32 @av_freep(i8** %8)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %22
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @av_log_set_callback(i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @show_help_default(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @show_help_codec(i8*, i32) #1

declare dso_local i32 @show_help_demuxer(i8*) #1

declare dso_local i32 @show_help_muxer(i8*) #1

declare dso_local i32 @show_help_bsf(i8*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
