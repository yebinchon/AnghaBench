; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_validate_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_validate_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_AUTOMATIC = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid UTF-8 sequence %s found in string '%s'\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid UTF-8 sequence found in string '%s'\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WRITER_STRING_VALIDATION_IGNORE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"%d invalid UTF-8 sequence(s) found in string '%s', replaced with '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8**, i8*)* @validate_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_string(%struct.TYPE_10__* %0, i8** %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %17 = call i32 @av_bprint_init(%struct.TYPE_11__* %9, i32 0, i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %92, %3
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @av_utf8_decode(i32* %12, i8** %7, i8* %30, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %38 = call i32 @av_bprint_init(%struct.TYPE_11__* %15, i32 0, i32 %37)
  %39 = load i8*, i8** %14, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @bprint_bytes(%struct.TYPE_11__* %15, i8* %39, i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = load i32, i32* @AV_LOG_DEBUG, align 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %47, i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %51)
  store i32 1, i32* %13, align 4
  br label %53

53:                                               ; preds = %36, %28
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %73 [
    i32 129, label %62
    i32 128, label %68
  ]

62:                                               ; preds = %56
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = load i32, i32* @AV_LOG_ERROR, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %63, i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %11, align 4
  br label %111

68:                                               ; preds = %56
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @av_bprintf(%struct.TYPE_11__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %56, %68
  br label %74

74:                                               ; preds = %73, %53
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @WRITER_STRING_VALIDATION_IGNORE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %77, %74
  %84 = load i8*, i8** %14, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @av_bprint_append_data(%struct.TYPE_11__* %9, i8* %84, i32 %90)
  br label %92

92:                                               ; preds = %83, %77
  br label %24

93:                                               ; preds = %24
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 128
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = load i32, i32* @AV_LOG_WARNING, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %102, i32 %103, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %104, i8* %105, i32 %108)
  br label %110

110:                                              ; preds = %101, %96, %93
  br label %111

111:                                              ; preds = %110, %62
  %112 = load i8**, i8*** %5, align 8
  %113 = call i32 @av_bprint_finalize(%struct.TYPE_11__* %9, i8** %112)
  %114 = load i32, i32* %11, align 4
  ret i32 %114
}

declare dso_local i32 @av_bprint_init(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @av_utf8_decode(i32*, i8**, i8*, i32) #1

declare dso_local i32 @bprint_bytes(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @av_bprint_append_data(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_11__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
