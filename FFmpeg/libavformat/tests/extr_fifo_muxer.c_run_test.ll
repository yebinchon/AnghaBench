; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_fifo_muxer.c_run_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_fifo_muxer.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 (i32*, i32**, i32*)*, i8*, i32, i64, i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Muxer initialization failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to parse options: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"print_deinit_summary=%d:write_header_ret=%d:write_trailer_ret=%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"format_opts\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"fifo_format\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"fifo_test\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Failed to set options for test muxer: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = load i32, i32* @BUFFER_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = call i32 @initialize_fifo_tst_muxer_chain(i32** %4)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @av_err2str(i32 %18)
  %20 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %72

21:                                               ; preds = %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @av_dict_parse_string(i32** %3, i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @av_err2str(i32 %35)
  %37 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  br label %72

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i32, i32* @BUFFER_SIZE, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snprintf(i8* %12, i32 %40, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 %47, i32 %50)
  %52 = call i32 @av_dict_set(i32** %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %12, i32 0)
  store i32 %52, i32* %7, align 4
  %53 = call i32 @av_dict_set(i32** %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %39
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i8* @av_err2str(i32 %61)
  %63 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %62)
  br label %72

64:                                               ; preds = %56
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32 (i32*, i32**, i32*)*, i32 (i32*, i32**, i32*)** %66, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = call i32 %67(i32* %68, i32** %3, i32* %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %64, %59, %33, %16
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %80 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %75, i8* %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @avformat_free_context(i32* %81)
  %83 = call i32 @av_dict_free(i32** %3)
  %84 = load i32, i32* %7, align 4
  %85 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %85)
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @initialize_fifo_tst_muxer_chain(i32**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @av_err2str(i32) #2

declare dso_local i32 @av_dict_parse_string(i32**, i32, i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i32 @avformat_free_context(i32*) #2

declare dso_local i32 @av_dict_free(i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
