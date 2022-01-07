; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_avio_dir_cmd.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_avio_dir_cmd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Missing argument for list operation.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Missing argument for del operation.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Missing argument for move operation.\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Invalid operation %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* @AV_LOG_DEBUG, align 4
  %9 = call i32 @av_log_set_level(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @usage(i8* %15)
  store i32 1, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = call i32 (...) @avformat_network_init()
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* @AV_LOG_INFO, align 4
  %30 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %25
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @list_op(i8* %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %28
  br label %86

39:                                               ; preds = %17
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @AV_LOG_INFO, align 4
  %48 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %7, align 4
  br label %56

51:                                               ; preds = %43
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @del_op(i8* %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %46
  br label %85

57:                                               ; preds = %39
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* @AV_LOG_INFO, align 4
  %66 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %7, align 4
  br label %77

69:                                               ; preds = %61
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 3
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @move_op(i8* %72, i8* %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %69, %64
  br label %84

78:                                               ; preds = %57
  %79 = load i32, i32* @AV_LOG_INFO, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = call i32 @AVERROR(i32 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %78, %77
  br label %85

85:                                               ; preds = %84, %56
  br label %86

86:                                               ; preds = %85, %38
  %87 = call i32 (...) @avformat_network_deinit()
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %12
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @av_log_set_level(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @avformat_network_init(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @list_op(i8*) #1

declare dso_local i32 @del_op(i8*) #1

declare dso_local i32 @move_op(i8*, i8*) #1

declare dso_local i32 @avformat_network_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
