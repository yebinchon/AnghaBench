; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_init_FILE_internal_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_init_FILE_internal_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64, i32 }

@FLAC__STREAM_DECODER_UNINITIALIZED = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@file_read_callback_ = common dso_local global i32 0, align 4
@file_seek_callback_ = common dso_local global i32 0, align 4
@file_tell_callback_ = common dso_local global i32 0, align 4
@file_length_callback_ = common dso_local global i32 0, align 4
@file_eof_callback_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i64, i32, i64, i8*, i32)* @init_FILE_internal_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_FILE_internal_(%struct.TYPE_8__* %0, i32* %1, i64 %2, i32 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = icmp ne %struct.TYPE_8__* null, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @FLAC__ASSERT(i32 %18)
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* null, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @FLAC__ASSERT(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FLAC__STREAM_DECODER_UNINITIALIZED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %7
  %32 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 8
  store i32 %32, i32* %8, align 4
  br label %106

37:                                               ; preds = %7
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 0, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %13, align 8
  %42 = icmp eq i64 0, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 8
  store i32 %44, i32* %8, align 4
  br label %106

49:                                               ; preds = %40
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** @stdin, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32* (...) @get_binary_stdin_()
  store i32* %54, i32** %10, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32* %56, i32** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = load i32, i32* @file_read_callback_, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** @stdin, align 8
  %69 = icmp eq i32* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %73

71:                                               ; preds = %55
  %72 = load i32, i32* @file_seek_callback_, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 0, %70 ], [ %72, %71 ]
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** @stdin, align 8
  %81 = icmp eq i32* %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %85

83:                                               ; preds = %73
  %84 = load i32, i32* @file_tell_callback_, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ 0, %82 ], [ %84, %83 ]
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** @stdin, align 8
  %93 = icmp eq i32* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @file_length_callback_, align 4
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i32 [ 0, %94 ], [ %96, %95 ]
  %99 = load i32, i32* @file_eof_callback_, align 4
  %100 = load i64, i64* %11, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i64, i64* %13, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @init_stream_internal_(%struct.TYPE_8__* %61, i32 %62, i32 %74, i32 %86, i32 %98, i32 %99, i64 %100, i32 %101, i64 %102, i8* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %97, %43, %31
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32* @get_binary_stdin_(...) #1

declare dso_local i32 @init_stream_internal_(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i64, i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
