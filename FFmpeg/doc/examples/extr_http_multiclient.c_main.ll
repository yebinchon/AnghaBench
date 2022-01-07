; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_http_multiclient.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_http_multiclient.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"usage: %s input http://hostname[:port]\0AAPI example program to serve http to multiple clients.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to set listen mode for server: %s\0A\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to open server: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Entering main loop.\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Accepted client, forking process.\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Fork failed\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"In child.\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Some errors occurred: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load i32, i32* @AV_LOG_TRACE, align 4
  %14 = call i32 @av_log_set_level(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* %3, align 4
  br label %101

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = call i32 (...) @avformat_network_init()
  %30 = call i32 @av_dict_set(i32** %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %30, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @av_err2str(i32 %34)
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  br label %101

38:                                               ; preds = %22
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %41 = call i32 @avio_open2(i32** %8, i8* %39, i32 %40, i32* null, i32** %6)
  store i32 %41, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @av_err2str(i32 %45)
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %3, align 4
  br label %101

49:                                               ; preds = %38
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %85, %49
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @avio_accept(i32* %53, i32** %7)
  store i32 %54, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %86

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 (...) @fork()
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %11, align 4
  br label %86

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @process_client(i32* %73, i8* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @avio_close(i32* %76)
  %78 = call i32 @exit(i32 0) #3
  unreachable

79:                                               ; preds = %67
  %80 = load i32, i32* %12, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @avio_close(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %52

86:                                               ; preds = %63, %56
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @avio_close(i32* %87)
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @AVERROR_EOF, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* @stderr, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i8* @av_err2str(i32 %97)
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %98)
  store i32 1, i32* %3, align 4
  br label %101

100:                                              ; preds = %91, %86
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %95, %43, %32, %17
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @av_log_set_level(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @avformat_network_init(...) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @avio_open2(i32**, i8*, i32, i32*, i32**) #1

declare dso_local i32 @avio_accept(i32*, i32**) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @process_client(i32*, i8*) #1

declare dso_local i32 @avio_close(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
