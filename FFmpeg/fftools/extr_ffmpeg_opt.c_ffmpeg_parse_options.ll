; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_ffmpeg_parse_options.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_ffmpeg_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }

@options = common dso_local global i32 0, align 4
@groups = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error splitting the argument list: \00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error parsing global options: \00", align 1
@GROUP_INFILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@open_input_file = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Error opening input files: \00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Error initializing complex filters.\0A\00", align 1
@GROUP_OUTFILE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@open_output_file = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Error opening output files: \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffmpeg_parse_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca [128 x i32], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = call i32 @memset(%struct.TYPE_5__* %5, i32 0, i32 16)
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = load i32, i32* @options, align 4
  %12 = load i32, i32* @groups, align 4
  %13 = load i32, i32* @groups, align 4
  %14 = call i32 @FF_ARRAY_ELEMS(i32 %13)
  %15 = call i32 @split_commandline(%struct.TYPE_5__* %5, i32 %9, i8** %10, i32 %11, i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @AV_LOG_FATAL, align 4
  %20 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %63

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %23 = call i32 @parse_optgroup(i32* null, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @AV_LOG_FATAL, align 4
  %28 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %63

29:                                               ; preds = %21
  %30 = call i32 (...) @term_init()
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @GROUP_INFILE, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* @open_input_file, align 4
  %36 = call i32 @open_files(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @AV_LOG_FATAL, align 4
  %41 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %63

42:                                               ; preds = %29
  %43 = call i32 (...) @init_complex_filters()
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @AV_LOG_FATAL, align 4
  %48 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %63

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @GROUP_OUTFILE, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* @open_output_file, align 4
  %55 = call i32 @open_files(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @AV_LOG_FATAL, align 4
  %60 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %63

61:                                               ; preds = %49
  %62 = call i32 (...) @check_filter_outputs()
  br label %63

63:                                               ; preds = %61, %58, %46, %39, %26, %18
  %64 = call i32 @uninit_parse_context(%struct.TYPE_5__* %5)
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %70 = call i32 @av_strerror(i32 %68, i32* %69, i32 512)
  %71 = load i32, i32* @AV_LOG_FATAL, align 4
  %72 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %73 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %72)
  br label %74

74:                                               ; preds = %67, %63
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @split_commandline(%struct.TYPE_5__*, i32, i8**, i32, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @parse_optgroup(i32*, i32*) #1

declare dso_local i32 @term_init(...) #1

declare dso_local i32 @open_files(i32*, i8*, i32) #1

declare dso_local i32 @init_complex_filters(...) #1

declare dso_local i32 @check_filter_outputs(...) #1

declare dso_local i32 @uninit_parse_context(%struct.TYPE_5__*) #1

declare dso_local i32 @av_strerror(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
