; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_avio_reading.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_avio_reading.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.buffer_data = type { i64, i32*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"usage: %s input_file\0AAPI example program to show how to read from a custom buffer accessed through AVIOContext.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@read_packet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not open input\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not find stream information\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Error occurred: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_data, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i64 4096, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = bitcast %struct.buffer_data* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 1, i32* %3, align 4
  br label %103

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @av_file_map(i8* %28, i32** %8, i64* %10, i32 0, i32* null)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %82

33:                                               ; preds = %24
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %14, i32 0, i32 1
  store i32* %34, i32** %35, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %14, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = call %struct.TYPE_11__* (...) @avformat_alloc_context()
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %6, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %13, align 4
  br label %82

43:                                               ; preds = %33
  %44 = load i64, i64* %11, align 8
  %45 = call i32* @av_malloc(i64 %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %13, align 4
  br label %82

51:                                               ; preds = %43
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call %struct.TYPE_10__* @avio_alloc_context(i32* %52, i64 %53, i32 0, %struct.buffer_data* %14, i32* @read_packet, i32* null, i32* null)
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %7, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = icmp ne %struct.TYPE_10__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %13, align 4
  br label %82

60:                                               ; preds = %51
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %63, align 8
  %64 = call i32 @avformat_open_input(%struct.TYPE_11__** %6, i32* null, i32* null, i32* null)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %82

70:                                               ; preds = %60
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = call i32 @avformat_find_stream_info(%struct.TYPE_11__* %71, i32* null)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @av_dump_format(%struct.TYPE_11__* %79, i32 0, i8* %80, i32 0)
  br label %82

82:                                               ; preds = %78, %75, %67, %57, %48, %40, %32
  %83 = call i32 @avformat_close_input(%struct.TYPE_11__** %6)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = call i32 @av_freep(i32* %88)
  br label %90

90:                                               ; preds = %86, %82
  %91 = call i32 @avio_context_free(%struct.TYPE_10__** %7)
  %92 = load i32*, i32** %8, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @av_file_unmap(i32* %92, i64 %93)
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i32, i32* @stderr, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i8* @av_err2str(i32 %99)
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  store i32 1, i32* %3, align 4
  br label %103

102:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %97, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @av_file_map(i8*, i32**, i64*, i32, i32*) #2

declare dso_local %struct.TYPE_11__* @avformat_alloc_context(...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32* @av_malloc(i64) #2

declare dso_local %struct.TYPE_10__* @avio_alloc_context(i32*, i64, i32, %struct.buffer_data*, i32*, i32*, i32*) #2

declare dso_local i32 @avformat_open_input(%struct.TYPE_11__**, i32*, i32*, i32*) #2

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @av_dump_format(%struct.TYPE_11__*, i32, i8*, i32) #2

declare dso_local i32 @avformat_close_input(%struct.TYPE_11__**) #2

declare dso_local i32 @av_freep(i32*) #2

declare dso_local i32 @avio_context_free(%struct.TYPE_10__**) #2

declare dso_local i32 @av_file_unmap(i32*, i64) #2

declare dso_local i8* @av_err2str(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
