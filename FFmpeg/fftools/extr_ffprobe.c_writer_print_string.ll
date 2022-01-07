; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_print_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32*, %struct.TYPE_8__*, %struct.section** }
%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_9__*, i8*, i8*)* }
%struct.section = type { i32, i32, i64 }

@PRINT_STRING_OPT = common dso_local global i32 0, align 4
@WRITER_FLAG_DISPLAY_OPTIONAL_FIELDS = common dso_local global i32 0, align 4
@PRINT_STRING_VALIDATE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Invalid key=value string combination %s=%s in section %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*, i32)* @writer_print_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writer_print_string(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.section*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.section**, %struct.section*** %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.section*, %struct.section** %16, i64 %19
  %21 = load %struct.section*, %struct.section** %20, align 8
  store %struct.section* %21, %struct.section** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @PRINT_STRING_OPT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @WRITER_FLAG_DISPLAY_OPTIONAL_FIELDS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %116

36:                                               ; preds = %26, %4
  %37 = load %struct.section*, %struct.section** %10, align 8
  %38 = getelementptr inbounds %struct.section, %struct.section* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load %struct.section*, %struct.section** %10, align 8
  %43 = getelementptr inbounds %struct.section, %struct.section* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @av_dict_get(i32 %44, i8* %45, i32* null, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %114

48:                                               ; preds = %41, %36
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @PRINT_STRING_VALIDATE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %94

53:                                               ; preds = %48
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @validate_string(%struct.TYPE_9__* %54, i8** %12, i8* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %77

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @validate_string(%struct.TYPE_9__* %61, i8** %13, i8* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %77

67:                                               ; preds = %60
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_9__*, i8*, i8*)*, i32 (%struct.TYPE_9__*, i8*, i8*)** %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 %72(%struct.TYPE_9__* %73, i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %67, %66, %59
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.section*, %struct.section** %10, align 8
  %86 = getelementptr inbounds %struct.section, %struct.section* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @av_log(%struct.TYPE_9__* %81, i32 %82, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %83, i8* %84, i32 %87)
  br label %89

89:                                               ; preds = %80, %77
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @av_free(i8* %90)
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @av_free(i8* %92)
  br label %104

94:                                               ; preds = %48
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32 (%struct.TYPE_9__*, i8*, i8*)*, i32 (%struct.TYPE_9__*, i8*, i8*)** %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 %99(%struct.TYPE_9__* %100, i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %94, %89
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %104, %41
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %35
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @validate_string(%struct.TYPE_9__*, i8**, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
