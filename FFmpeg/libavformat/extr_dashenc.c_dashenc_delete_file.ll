; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_dashenc_delete_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_dashenc_delete_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to delete %s\0A\00", align 1
@AV_ERROR_MAX_STRING_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to delete %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @dashenc_delete_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dashenc_delete_file(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @ff_is_http_proto(i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @set_http_options(i32** %8, i32* %20)
  %22 = call i32 @av_dict_set(i32** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @dashenc_io_open(%struct.TYPE_6__* %23, i32** %7, i8* %24, i32** %8)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (%struct.TYPE_6__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_6__* %28, i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = call i32 @av_dict_free(i32** %8)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = call i32 @ff_format_io_close(%struct.TYPE_6__* %34, i32** %7)
  br label %64

36:                                               ; preds = %2
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @avpriv_io_delete(i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load i32, i32* @AV_ERROR_MAX_STRING_SIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %10, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = trunc i64 %43 to i32
  %48 = call i32 @av_strerror(i32 %46, i8* %45, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = call i32 @AVERROR(i32 %51)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @AV_LOG_WARNING, align 4
  br label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (%struct.TYPE_6__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_6__* %49, i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %60, i8* %45)
  %62 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %62)
  br label %63

63:                                               ; preds = %58, %36
  br label %64

64:                                               ; preds = %63, %32
  ret void
}

declare dso_local i32 @ff_is_http_proto(i8*) #1

declare dso_local i32 @set_http_options(i32**, i32*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i64 @dashenc_io_open(%struct.TYPE_6__*, i32**, i8*, i32**) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_6__*, i32**) #1

declare dso_local i32 @avpriv_io_delete(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @av_strerror(i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
