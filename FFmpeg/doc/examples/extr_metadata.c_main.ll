; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_metadata.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_metadata.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@.str = private unnamed_addr constant [97 x i8] c"usage: %s <input_file>\0Aexample program to demonstrate the use of the libavformat metadata API.\0A\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot find stream information\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 1, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @avformat_open_input(%struct.TYPE_8__** %6, i8* %19, i32* null, i32* null)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = call i32 @avformat_find_stream_info(%struct.TYPE_8__* %25, i32* null)
  store i32 %26, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 @av_log(i32* null, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %41, %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %39 = call %struct.TYPE_9__* @av_dict_get(i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %37, i32 %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %7, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %44, i8* %47)
  br label %33

49:                                               ; preds = %33
  %50 = call i32 @avformat_close_input(%struct.TYPE_8__** %6)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %28, %22, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @avformat_open_input(%struct.TYPE_8__**, i8*, i32*, i32*) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_9__* @av_dict_get(i32, i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
