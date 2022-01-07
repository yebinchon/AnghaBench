; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_init_file_internal_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_init_file_internal_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@FLAC__STREAM_DECODER_UNINITIALIZED = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stdin = common dso_local global i32* null, align 8
@FLAC__STREAM_DECODER_INIT_STATUS_ERROR_OPENING_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32, i32, i32, i8*, i32)* @init_file_internal_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_file_internal_(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %18 = icmp ne %struct.TYPE_6__* null, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @FLAC__ASSERT(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FLAC__STREAM_DECODER_UNINITIALIZED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %7
  %29 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  store i32 %29, i32* %8, align 4
  br label %69

34:                                               ; preds = %7
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 0, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 0, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 8
  store i32 %41, i32* %8, align 4
  br label %69

46:                                               ; preds = %37
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  %51 = call i32* @flac_fopen(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %54

52:                                               ; preds = %46
  %53 = load i32*, i32** @stdin, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i32* [ %51, %49 ], [ %53, %52 ]
  store i32* %55, i32** %16, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = icmp eq i32* null, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_ERROR_OPENING_FILE, align 4
  store i32 %59, i32* %8, align 4
  br label %69

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @init_FILE_internal_(%struct.TYPE_6__* %61, i32* %62, i32 %63, i32 %64, i32 %65, i8* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %60, %58, %40, %28
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32* @flac_fopen(i8*, i8*) #1

declare dso_local i32 @init_FILE_internal_(%struct.TYPE_6__*, i32*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
