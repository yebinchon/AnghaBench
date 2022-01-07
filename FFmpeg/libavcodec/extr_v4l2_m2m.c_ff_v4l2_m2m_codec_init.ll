; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_ff_v4l2_m2m_codec_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_ff_v4l2_m2m_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.dirent = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"probing device %s\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not find a valid device\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Using device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_v4l2_m2m_codec_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = call i32 @AVERROR(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %9, align 8
  %20 = call i32* @opendir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %83

26:                                               ; preds = %1
  %27 = load i32*, i32** %8, align 8
  %28 = call %struct.dirent* @readdir(i32* %27)
  store %struct.dirent* %28, %struct.dirent** %5, align 8
  br label %29

29:                                               ; preds = %60, %26
  %30 = load %struct.dirent*, %struct.dirent** %5, align 8
  %31 = icmp ne %struct.dirent* %30, null
  br i1 %31, label %32, label %63

32:                                               ; preds = %29
  %33 = load %struct.dirent*, %struct.dirent** %5, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %60

39:                                               ; preds = %32
  %40 = trunc i64 %14 to i32
  %41 = load %struct.dirent*, %struct.dirent** %5, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %16, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = load i32, i32* @AV_LOG_DEBUG, align 4
  %47 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %45, i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strlen(i8* %16)
  %52 = add nsw i64 %51, 1
  %53 = call i32 @strncpy(i32 %50, i8* %16, i64 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = call i32 @v4l2_probe_driver(%struct.TYPE_8__* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %39
  br label %63

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32*, i32** %8, align 8
  %62 = call %struct.dirent* @readdir(i32* %61)
  store %struct.dirent* %62, %struct.dirent** %5, align 8
  br label %29

63:                                               ; preds = %58, %29
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @closedir(i32* %64)
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %69, i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memset(i32 %74, i32 0, i32 4)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %83

77:                                               ; preds = %63
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = load i32, i32* @AV_LOG_INFO, align 4
  %80 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %78, i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %16)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = call i32 @v4l2_configure_contexts(%struct.TYPE_8__* %81)
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %77, %68, %23
  %84 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @v4l2_probe_driver(%struct.TYPE_8__*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @v4l2_configure_contexts(%struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
